//
//  SongListVC.swift
//  Music Player
//
//  Created by Vijay Parmar on 08/10/20.
//  Copyright © 2020 Dashu. All rights reserved.
//

import UIKit
struct MySongList
{
    var img:String!
    var songName:String!
    var singerName:String!
    var filename:String!
};
class SongListVC: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    
    var arrSongList=[MySongList]()
    
    @IBOutlet weak var tblSongList: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblSongList.dataSource=self
        tblSongList.delegate=self
    
        arrSongList.append(MySongList(img: "song1", songName: "Ganesh Vandna", singerName: "Dashu",filename: "ganesha"))
        arrSongList.append(MySongList(img: "song2", songName: "Gori Radha", singerName: "Kirtidan Gadhvi",filename: "gori_radha"))
        arrSongList.append(MySongList(img: "song3", songName: "Firse Machayenge", singerName: "Emiway Bantai",filename: "emiway"))
        arrSongList.append(MySongList(img: "song4", songName: "Va Vaya", singerName: "Santvani Trivedi",filename: "va_vaya"))
       

        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrSongList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath)as! TableViewCell
        cell.imgSong.image=UIImage(named: arrSongList[indexPath.row].img)
        cell.lblSongName.text=arrSongList[indexPath.row].songName
        cell.lblSingerName.text=arrSongList[indexPath.row].singerName
        return cell
    }
    
}
