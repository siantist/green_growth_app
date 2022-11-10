// https://developer.apple.com/library/archive/documentation/DataManagement/Conceptual/EventKitProgGuide/ReadingAndWritingEvents.html#//apple_ref/doc/uid/TP40004775-SW1
// https://www.hackingwithswift.com/quick-start/swiftui/how-to-create-a-date-picker-and-read-values-from-it

import SwiftUI // date picker view UIDatePicker
struct ContentView: View {
    
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }()

    @State private var birthDate = Date()

    var body: some View {
        VStack {
            DatePicker(selection: $birthDate, in: ...Date(), displayedComponents: .date) {
                Text("Select a date")
            }

            Text("Date is \(birthDate.formatted(date: .long, time: .omitted))")
        }
    }
}

// https://stackoverflow.com/questions/33618685/how-to-get-all-events-out-of-a-calendar-swift

import EventKit

var titles : [String] = []
var startDates : [Date] = []
var endDates : [Date] = []

var store = EKEventStore()

let calendars = store.calendars(for: .event)

for calendar in calendars {
    if calendar.title == "Work" {
        let oneMonthAgo = Date(timeIntervalSinceNow: -30*24*3600)
        let oneMonthAfter = Date(timeIntervalSinceNow: 30*24*3600)
        let predicate =  store.predicateForEvents(withStart: oneMonthAgo, end: oneMonthAfter, calendars: [calendar])
        
        let events = store.events(matching: predicate)
        
        for event in events {
            titles.append(event.title)
            startDates.append(event.startDate)
            endDates.append(event.endDate)
        }
    }
}

// https://github.com/richardtop/CalendarApp

// https://www.fivestars.blog/articles/app-delegate-scene-delegate-swiftui/

// https://github.com/richardtop/CalendarApp/blob/master/Calendar/CalendarViewController.swift

private func createNewEvent(at date: Date) -> EKWrapper {
        let newEKEvent = EKEvent(eventStore: eventStore)
        newEKEvent.calendar = eventStore.defaultCalendarForNewEvents
        
        var components = DateComponents()
        components.hour = 1
        let endDate = calendar.date(byAdding: components, to: date)
        
        newEKEvent.startDate = date
        newEKEvent.endDate = endDate
        newEKEvent.title = "New event"

        let newEKWrapper = EKWrapper(eventKitEvent: newEKEvent)
        newEKWrapper.editedEvent = newEKWrapper
        return newEKWrapper
    }
    
// https://developer.apple.com/documentation/eventkit
