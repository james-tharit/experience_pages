import 'package:experience_pages/experience.dart';

const name = 'James Tharit Rattananenya';
const email = 'tharit.rt@gmail.com';
const baseLocation = 'Bangkok, Thailand';
const tel = '+66-869-736-855';
const role = 'Fullstack Software Engineer';
const shortDescription =
    'I am a Fullstack Software Engineer with four years of experience.I mostly work on a Cross-Platform Mobile application and Web Application using Express/NodeJS. I have been involved with middle/large-scale mobile applications and some additional small web applications. The tech stack I am most familiar with is the Flutter framework, Express/NodeJS/Typescript/GraphQL, and React Native.';

List<ExperienceData> experiences = [
  ExperienceData(
      title: 'Fullstack Software Engineer, International Airline in Australia',
      periodLocation: 'September 2023 - Present',
      desc: '''
As a Fullstack Software Engineer, I significantly enhanced software security by architecting a robust vulnerability management system. This involved integrating GitHub Dependabot with Jira, automating ticket creation through a daily serverless function, and implementing comprehensive code scanning. By championing OWASP top 10 security best practices, I developed secure code and elevated the team's security posture. This proactive approach accelerated vulnerability resolution and fostered a culture of security-first development.
      ''',
      stacks:
  '''
 Tech Stack:
- React
- AWS Lambda
- Infrastructure as code - AWS Cloudformation/Terraform
- DynamoDB
- Docker
- Github Action
- NIST Cybersecurity Framework 
- OWASP Top 10
  '''),
  ExperienceData(
      title:
      'Fullstack Software Engineer, Large online employment marketplaces in Australia',
      periodLocation: 'November 2021 - June 2023 | Bangkok, Thailand',
      desc: '''
As a Fullstack engineer, I've had the opportunity to contribute to two significant projects for a global online recruitment platform.
My first project involved building a learning and community platform to foster interaction and knowledge sharing among job seekers. I played a pivotal role in designing the system architecture to align with the client's business objectives. To optimize performance, I also implemented a GraphQL chain request feature, significantly improving data fetching efficiency.
Later on, I focused on consolidating multiple applications into a unified platform. I developed a seamless user migration process, ensuring a smooth transition for all users through a user-friendly offboarding flow. Additionally, I implemented a foolproof hard update system to guarantee successful data transfer.
      ''',
      stacks: '''
Tech Stack:
React Native, Express, GraphQL, Typescript, AWS Lambda, AWS Fargate, AuroraDB, DynamoDB, Redis, Docker, Buildkite Pipeline
      '''),
  ExperienceData(
      title: 'Software Engineer, Haupcar Company',
      periodLocation: 'June 2019 - September 2021 | Bangkok, Thailand',
      desc: '''
Haupcar is a car-sharing platform offering a convenient, app-based service that lets users search, reserve, and access vehicles with ease.
As a software engineer at Haupcar, I contributed to two key projects. First, I developed the core features of the mobile app using Flutter, focusing on search, reservation, and vehicle access functionalities. Second, I built an internal web application for staff and reservation management, utilizing React for the front-end and Node.js for the back-end.
''',
      stacks: '''
Tech Stack:
Flutter, Dart, React, Angular, MongoDB, NodeJs, MySQL
      '''),
  ExperienceData(
      title: 'Web Developer, Thammasat University(SIIT) ',
      periodLocation:
      'August 2018 - December 2018 | Pathumthani, Thailand',
      desc: '''
As a student, I gained practical web development experience working as a part-time developer for my professor. I contributed to a web-based educational platform, building features like a student check-in system and an admin dashboard. I honed my front-end skills using React and also developed foundational backend capabilities, including API creation and server setup. This hands-on experience provided a solid foundation in full-stack development and prepared me for future roles in the industry.
''',
      stacks: '''
Tech Stack:
React, Express, Node, RethinkDB
      '''),
];
