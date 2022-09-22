// https://github.com/scinfu/SwiftSoup

let ycomb = "https://news.ycombinator.com/"
let googlesearch =""
let content = try String(contentsOf: URL(string: ycomb)!)


let doc: Document = try SwiftSoup.parse(content)

let table = try doc.select("table.itemlist").first()!
let rows = try table.select("tr")

let title = rows.compactMap { row throws -> String? in
    let cells = try row.select("td.title")
    guard cells.count == 2, let link = try cells[1].select("a").first() else {
        return nil // wrong row
    }

    return try link.text()
}

// https://github.com/scinfu/SwiftSoup/blob/master/Example/Example/ViewController.swift
