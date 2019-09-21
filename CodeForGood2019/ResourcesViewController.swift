//
//  ResourcesViewControllers.swift
//  CodeForGood2019
//
//  Created by Malik Arachiche on 9/20/19.
//  Copyright © 2019 Malik Arachiche. All rights reserved.
//

import UIKit
import SnapKit

class ResourcesViewController: UIViewController {
    
    var resourcesArray: [Resource] = [Resource(title: "What to do if you suspect a child is being abused", detailText: "Children often disclose abuse through unusual behaviors or changes in behaviors, not words. Because many forms of abuse are not physically evident, adults should recognize certain behavioral cues as signs of potential abuse. Learn more about the signs of abuse."),
                                      Resource(title: "Preventing Sexual Abuse", detailText: "Preventing child sexual abuse starts with caring adults taking responsibility for protecting children and youth. Know what to communicate to your child, behaviors to watch out for and steps to take to keep children safe.One of the most important things to keep in mind is that children are most often abused by someone they know and trust. In more than 90% of sexual abuse cases, the child knows their perpetrator personally – he or she is a family member, childcare provider, friend, neighbor or other trusted person. Perpetrators, who can be adults or youth, usually have permission to be around the child on a regular basis. If someone is “too good to be true,” ask more questions. Even a close friend or relative may not be a safe person for your children."),
                                      Resource(title: "Recognizing Sexual Abuse", detailText: "As adults, we are responsible for recognizing the signs of child sexual abuse and taking action to keep children safe. Children are most often abused by someone they know and trust. In more than 90% of sexual abuse cases, the child knows their perpetrator personally – he or she is a family member, childcare provider, friend, neighbor or other trusted person. Perpetrators, who can be adults or youth, usually have permission to be around the child on a regular basis. If someone is too good to be true, ask more questions. Even a close friend or relative may not be a safe person for your children."),
                                      Resource(title: "Responding to Sexual Abuse", detailText: "It is not your responsibility to investigate abuse, interview the child or get all the facts. Just contact the authorities with what you know or suspect so that children and families get the support and care they need."),
                                      Resource(title: "Reporting Sexual Abuse", detailText: "Anyone can report suspected child abuse. Certain professionals are mandated reporters, meaning they are required by law to report suspected abuse. In Illinois, mandated reporters include school, child care and medical personnel, early intervention providers, members of the clergy and law enforcement."),
                                    Resource(title: "Sexual Abuse Resources", detailText: "Chicago Children’s Advocacy Center and our partners are the front-line responders in Chicago to reports of sexual abuse, as well as reports of physical abuse of children under age 3. Youth-sports programs give trusted adults access to youth. Therefore, it is critical that all youth sports programs develop policies and procedures to help keep children safe from sexual abuse. As parents, it’s important to ask questions of your child’s youth sports program and to know their policies. Parents can help prevent sexual abuse by getting involved, speaking up and learning how to recognize warning signs of abuse."),
                                    Resource(title: "For Children with Disabilities", detailText: "Children with disabilities have special considerations when preventing, recognizing and responding to abuse. Children with disabilities are three times more likely to be abused than children without disabilities. In particular, children with intellectual disabilities are five times more likely to be abused. By being proactive about safety, there are many ways to reduce your child’s vulnerability and keep your child safe."),
                                    Resource(title: "Internet safety", detailText: "Child sexual abuse happens online, too. As adults, we can prevent abuse by staying informed about children’s online activities and maintaining open communication."),
        Resource(title: "Training", detailText: "ChicagoCAC offers free and low-cost trainings to professionals, community members and front-line providers on preventing, recognizing, responding to and reporting abuse. In most cases, continuing education units (CE hours) are available for social workers and counselors."),
                                    Resource(title: "Bridging The Gap Lecture Series", detailText: "The Bridging the Gap Lecture Series was developed to address and combat the stereotypes and myths that influence how the public thinks about childhood sexual abuse, particularly in minority communities. The Advocacy & Investigative Services Department of Chicago Children’s Advocacy Center developed Bridging The Gap in 2018 after a series of documentaries and the #MeToo movement revealed the multiplicity of misconceptions and stereotypes that are prevalent in the public mindset that are a detriment to the victims of sexual abuse and violence.")
    ]
    let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    
    func setUpUI() {
        //view.backgroundColor = .blue
        print("Got em coach")
        navigationController?.navigationBar.barTintColor = Colors.fadedPurple
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.prefersLargeTitles = true
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(ResourcesTableViewCell.self, forCellReuseIdentifier: "resourcesCell")
        tableView.rowHeight = 150
        title = "Resources"
        
        setConstraints()
    }
    
    func setConstraints() {
        
        tableView.snp.makeConstraints { (make) in
            make.edges.equalTo(self.view)
        }
    }
}

extension ResourcesViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let resource = resourcesArray[indexPath.row]
        self.performSegue(withIdentifier: "resourceDetailSegue", sender: resource)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "resourceDetailSegue") {
            if let vc = segue.destination as? ResourceDetailViewController {
                guard let resource = sender as? Resource else {return}
                vc.res = resource
            }
        }
    }
}

extension ResourcesViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return resourcesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "resourcesCell", for: indexPath) as! ResourcesTableViewCell
        
        cell.textLabel?.text = resourcesArray[indexPath.row].title
        cell.textLabel?.textColor = Colors.fadedPurple
        cell.textLabel?.numberOfLines = 2
        cell.textLabel?.font = UIFont(name: "AppleSDGothicNeo-Medium", size: 30)
        cell.textLabel?.textAlignment = .center
        cell.layer.borderWidth = 2.0
        cell.layer.borderColor = Colors.fadedGreen.cgColor
        
        return cell
    }
}
