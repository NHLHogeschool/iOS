# Sessie 6

## Doel
Het doel van vandaag is het leren werken met UITableViews

## Lezen en doen
* Hoofdstuk 7


## Demo 1

Maak table view controller aan:

class MooieTable : UITableViewController, UITableViewDataSource {
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    // Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
    // Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        println ("Uitgevoerd|")
        let cell = UITableViewCell()
        cell.textLabel.text = "Hallo"
        cell.detailTextLabel?.text = "Bla"
        return cell
    }
}

## Demo 2

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        println ("Uitgevoerd|")

        var cell = tableView.dequeueReusableCellWithIdentifier(CELL_ID) as? UITableViewCell
        
        if (cell == nil) {
            cell = UITableViewCell()
        }
        cell!.textLabel.text = "Hallo"
        cell!.detailTextLabel?.text = "Bla"
        return cell!

    }

    