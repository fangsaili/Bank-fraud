# SEG Small Group Project

## Task Overview and Description

### The refund scam

The refund scam is a common fraudulent scheme to steal money. There are many variants of the scheme. In each variant, however, the scammers stick to a specific script that has been written by the person who designed scheme. Typically, this script involves the following steps:

1.  Bait the victim. Prospective victims are contacted to inform them they are entitled to a refund. Often, telephone numbers of victims of another scam are purchased or stolen to find people to contact.
2.  Connect to PC. In order to proceed with the scheme, the scammer requires remote access to the victim's computer. To achieve this, the scammer will ask the victim to download some type of remote access software that is used by IT support teams. Each refund scam script includes a reason for this that fits within the story line.
3.  Sell the lie. Next, the scammer pretends to process the refund. For this crucial part of the scam to work, the scammer must get the victim to log into their bank account. The scammer will use this to make the victim believe that in the process of processing the refund, an extra digit was entered into the refund amount and the victim received far more money than they were owed. The scammer will edit the HTML shown by the victim's web browser to make the victim believe that they did receive too much money. At this point, the scammer feigns shock and surprise, and coerces the victim to "return" the amount that was overpaid.
4.  Arrange payment. This is the final step of the plan where the victim is pressured into paying the scammer using some form of untraceable payment, such as gift cards.

### Scam baiters

Scam baiters seek out these scams and pretend to be victims of the scam. It is common for scam baiters to set up a virtual machine and a virtual telephone number. They allow a scammer to access this virtual machine and go through the entire script. This allows them to gain insight into the scammer's operation, identify the software tools and services they employ, and collect evidence of their misuse. This can then be forwarded to legitimate providers and the authorities, with a view of inhibiting the scammers' operations.

As the refund bank relies on access to a bank account, scam baiters sometimes employ a fake bank service. The objective of this project is to produce a fake online banking service to help bait refund scammers.

## Assignment

### Aims and Objectives

The objective of the small group project is to develop a web application providing a fake online banking service that includes all the features a scam baiter might need to pretend to fall for the refund scam.  This assignment outlines the scope and high-level features of the application, but it does not provide a detailed list of requirements.  The team is required to elicit the requirements based on this assignment and its own research into refund scams.

The web application must consist of a customer-facing service that includes all the core feature of a consumer online-banking application and a means to administer the fake online banking service. The customer-facing service must provide functional versions of all features a scammer may observe or access as part of the refund scam. This includes (but not necessarily limited to) login, account overview, transaction transaction and payments/transfers.  Features of an online banking system that are unlikely to be accessed in the course of a refund scam script need not be implemented.  The administrative interface should enable the scam baiter to create, edit and delete one or more fake user profiles, add/manage/remove accounts to user profiles and generate a realistic recent transaction transaction and transaction that reflects the account balances.  To ensure that the fake online banking service becomes recognisable to scammers, it ought be possible to configure the look and feel (e.g. name, colour scheme, fonts, layout) from the administrative interface.

It is important that the application looks, feels and behaves like a real online banking service (as mentioned above, teams should elicit the associated requirements).  However, you must also ensure your application cannot be confused with a genuine online banking service of a real organisation.  That means you must not use the name, logo, look and feel (e.g. bespoke fonts and colours) of a genuine online banking service.  You must not use copyright or trademarked materials of a real organisation.  

The application should be developed using Ruby on Rails and deployed via Heroku.  The deployed version should be preconfigured with consumer and administrator accounts.  The consumer should have multiple bank accounts with transaction transaction.  Correct access credential to user and admin account should be provided.

### Priorities

1.  The application can be used to make a scammer believe they are interacting with their victim's online banking system in the course of a standard refund scam script. All the pages the scammer encounters look and feel like a coherent online banking system. Little or no setup is required to use the application. The login process requires only a single password.
2.  The application ideally includes a password-protected administrative area that can be used to configure the application, including the access credentials of fake-users, the numbers and names of the accounts of each user and the amount of money in each account. The login process can be set up to employ an extra security measure (e.g. random digits of a second password or passphrase or two-factor authentication) or this can be switched off. Aspects of the look and feel of the online banking application can be configured.
3.  The application also supports multiple currencies (GBP, USD and a third currency). Access to the administrative area requires a user account and a user-specific password. Admin superusers can add, edit and delete user accounts. The system can generate a random recent transaction transaction for an end-user. Some of the peripheral screens, not essential to the refund scam, have realistic content and a realistic look and feel.
4.  The application also allows transaction transactions to be edited. The transaction transaction generator generates realistic transactions. Businesses and brands are specific to the currency (e.g. UK businesses and brands for a GBP user, etc.). Amounts are frequencies of transactions are realistic.

Important notes

-   Requirements elicitation: As this project is not a programming exercise but a software engineering project, detailed requirements are not provided. It is part of the team's task to produce and develop a set of requirements independently. In your requirements elicitation, you should ask, as a team, what is of value to the end user. Your team's task it to produce as useful a system as possible in the available time. Do this by focussing on what adds most value now.
-   Continue learning: You will not be able to implement all features right away. Part of your task is to continue learning. Postpone tasks and decisions you do not need to or are unable to complete right now.

## Expectations

The small group project is an opportunity to practice software engineering. The purpose of this exercise is not just to produce the right system — one that meets the aims and objectives outlined in the assignment — but also to develop the system in the right way. Teams and team members are expected to adopt a number of agile and lean development methods and practices during this project. The assessment criteria includes an evaluation of the extent to which teams and individuals have adopted these. This chapter of the handbook outlines the expectations teams and individuals are required to meet.

## Deliverables to be uploaded

You must submit a single tar.gz or zip file that has the name of your team and contains a directory with the following:

1.  A README.md that contains the following:
    -   The name of your team.
    -   The names of the members of your team.
    -   A link to the URL where the deployed version of your system is located.  Also include a link to the administrative interface of the application.
    -   For each type of role in your application, provide the access credentials (username and password) for a user with that role in the deployed/production version of your application.  Make sure that these access credentials work correctly!
    -   Any significant amount code that was reused must be declared.  It is understood that your team will have completed the recommended training materials and that the examples used in those training videos will have inspired some of your code. If so, it is sufficient to add a single sentence that that all the code has borrowed ideas from the recommended training videos. If you have copied substantial amounts of other code into your application, this should be specified clearly, including the source, the number of lines of code reused and the location where it is reused.

2.  All your source code and a file containing the specification of your team's database.

3.  A PDF document that contains an ER diagram of the application's final database design.

### Deployed system

The web application that the team produces must be deployed via a free hosting services. The deployed version of the application must be available until the start of the next academic year, so that there is ample time for the work to be reviewed by the internal and external examiners.

### Other deliverables

The team must have created a remote Git repository and link that repository to Team Feedback, so that repository statistics can be computed. The team must also create weekly team meeting minutes with accurate attendance records on Team Feedback. The team must use a Trello board to define tasks and register allocation to team member, and this must also be linked to Team Feedback.  Review the Expectations chapter for instructions on how to organise your team's work.

### [Team assessment and mark scheme](https://keats.kcl.ac.uk/mod/book/view.php?id=3559809&chapterid=380913)
