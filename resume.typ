#set par(justify: true, leading: 0.53em)
#set text(font: "Inter", size: 10pt, fill: color.hsl(0deg, 0, 23, 90%))
#set page(paper: "a4", margin: (x: 1.1cm, y: 1.2cm), fill: white)

#set rect(
  width: 100%,
  stroke: none
)

#let work_experience(company, title, date, summary, works, url) = box[
  #text(weight: "medium", size: 12pt)[
    #title
  ]
  
  #show link: underline
  #emph(text()[#set text(font: "Noto Sans")
   #link(url)[#company]
  ]) - #date

  #par()[
    #text()[#summary]
  ]
  
  #set list(marker: [#image("marker.svg", width: 5pt, height: 5pt)], tight: false, spacing: 10pt)
  #for work in works [
    - #work
  ]
]

#grid(
  columns: (2fr, 7fr),
  gutter: 1pt,
  rect[
    #show link: underline
    #list(marker: none, tight: false, spacing: 9pt,
      [#link("https://www.linkedin.com/in/franklin-jezreel/")[LinkedIn]],
      [#link("https://github.com/techtheriac")[Github]],
      [#link("mailto:techtheriac@outlook.com")[Email]]
    )
    #v(.64cm)
    #text(weight: "medium")[Core Technologies]
    #list(marker: [#image("marker.svg", width: 5pt, height: 5pt)], tight: false, spacing: 9pt,
    [.NET Core],
    [ASP .NET],
    [EF Core],
    [NodeJs],
    [TypeScript],
    [PostgreSQL],
    [Azure]
  )
  #v(.6cm)
    #text(weight: "medium")[Specializations]
    #list(marker: [#image("marker.svg", width: 5pt, height: 5pt)], tight: false, spacing: 9pt,
    [DevOps],
    [Perf. Optimization],
    [Microservices],
    [Sotfware Testing],
  )
],
  
  rect[
    #text(weight: "bold", size: 25pt, fill: color.hsl(0deg, 0, 0, 90%))[Jezreel Franklin],
    #text(weight: "semibold", size: 15pt, style: "italic")[Software Engineer]
    
    I do my best work as a hands-on technical leader and engineer where I can balance my time between solving important technical challenges with helping other members of my team grow in their respective roles.
    
    #line(length: 100%, stroke: color.hsl(0deg, 0, 23, 12%))
    
    == Work Experience
    I have garnered experience over the years in building medium to large scale solutions as an independent consultant and within organisations.
    #v(.2cm)
    #work_experience(
      "Wema Bank",
      "Software Engineer",
      "December 2021 to Present",
      "I lead a team of developers through the architecting, building, and maintenance of ALAT Loans Microservices.",
      ("Built a service for an on-demand spooling and analysis of customers’ bank statement to curb the risk associated with a manual vetting of (probable unauthentic) bank statements.", 
      "Revamped the loan collections service to facilitate a proactive recovery of delinquent loans.",
      "Built fault tolerance into loans disbursement Microservice by leveraging upon message queues where we realised a 50% reduction in disbursement failure rate."),
      "https://alat.ng/"
    )
    #v(.3cm)
     #work_experience(
      "Union Bank Plc",
      "Backend Engineer (Contractor)",
      "June 2021 to December 2021",
      "My work for Union Bank involved building business automation tools to streamline internal processes that are specific to insights on concession data.",
      ("Migrated ALERO (a dashboard for concession & loans performance) from a legacy .NET Framework MVC project to independent modules exposed via APIs running on .NET Core.",
      "Introduced application containerization, continuous integration and delivery, leveraging upon Microsoft Azure.",
      ),
      "https://www.unionbankng.com/"
    )
    #v(.3cm)
    #work_experience(
      "Kiakia Prints",
      "Frontend Engineer",
      "January 2021 to June 2021",
      "Orchestrated the entire revamp and redesign implementation of Kiakiprints’ frontend application",
      ("Refactored Kiakia Prints’ barebones VueJs codebase to leverage upon Nuxt's SSG capabilities",
      "Eliminated Javascript framework bloat, purged JQuery and its dependents including Boostrap in favour of more custom styling.",
      "Integrated Kiakiaprints.com with Criteo retargeting & advertising platform: we realised a 10% boost in traffic"
      ),
      "https://kiakiaprint.com/"
    )

    #v(.3cm)
    #work_experience(
      "Intelligent Innovations",
      "Frontend Developer",
      "February 2020 to December 2020",
      "Worked on the client-side of several projects for organisations and individuals.",
      ("Built Timbala, 9ID, 9PAY and a host of other agency client applications.",
      "I handled development operations and frontend infrastructural concerns."
      ),
      "https://intelligentinnovations.co/"
    )
    #v(.1cm)
    == Education
    #v(.1cm)
    #par()[
      #text(weight: "medium", size: 11pt)[ESGT, Benin Republic],
      #text(weight: "regular", size: 10pt)[Bs.c Computer Science]\
      #text(weight: "regular", size: 10pt)[September  2015 - July 2019]
    ]
  ]
)
