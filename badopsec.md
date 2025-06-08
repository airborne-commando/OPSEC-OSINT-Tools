# Here are some notable examples of bad Tor OPSEC:

[In short](https://www.youtube.com/watch?v=AkQaL9SU2BY)

## School Bomb Threats

### Florida High School Student

A high school student in Florida used Tor to access a dark web marketplace and purchase bomb threat services. His OPSEC failures included:

1. Bragging about his actions to friends
2. Repeating the offense multiple times
3. Leaving evidence of dark web access on his phone
4. Confessing to the police when confronted

### Harvard Student Eldo Kim

Eldo Kim, a Harvard student, emailed bomb threats over Tor to avoid taking exams. His OPSEC mistakes were:

1. Using the school network to access Tor
2. Being the only Tor user on the network at the time of the threat
3. Admitting to the crime when questioned by police

## Silk Road Case

Ross Ulbricht, alleged operator of the Silk Road dark web marketplace, made several OPSEC blunders:

1. Using his real name email ([email protected]) in forum posts seeking IT help
2. Posting on Stack Overflow about Tor hidden services under a username later linked to Silk Road
3. Mentioning Tor and Silk Road to customs officials when caught with fake IDs
4. Failing to protect the real IP address of Silk Road servers

## LulzSec Hacking Group

Members of the LulzSec hacking group made various OPSEC mistakes:

1. Discussing operational activities in IRC channels
2. Revealing personal information, allowing profiling
3. Using stolen credit cards for purchases shipped to their own addresses
4. Trusting individuals who were working with the FBI

## General Bad OPSEC Practices

Other examples of poor OPSEC when using Tor include:

1. Contaminating identities by not maintaining compartmentalization
2. Failing to keep sensitive information confidential
3. Using predictable naming conventions for usernames, code, and passwords
4. Maintaining consistent working hours that can be traced to a specific time zone
5. Leaving command-and-control servers unsecured, exposing sensitive data

A few lists I found on github:

https://github.com/jermanuts/bad-opsec 

https://opsecfail.github.io/

Another one I'd like to add is mullvad and it's features:

## Mullvad VPN: A Contrast in Security

Mullvad VPN offers several features that prioritize user privacy and security:

1. **Anonymous account numbers**: Mullvad generates random 16-digit account numbers, eliminating the need for personal information like email addresses or usernames.

2. **Strong encryption**: Mullvad uses AES-256 encryption for OpenVPN and ChaCha20 for WireGuard connections.

3. **No-logs policy**: Mullvad has a strict no-logs policy, verified by independent audits.

4. **Lockdown mode**: This feature blocks internet connections not secured by Mullvad's servers.

5. **DNS content blockers**: Users can restrict access to ads, adult content, malware, and more.

6. **Open-source software**: Mullvad's commitment to transparency includes making their software open-source.

7. **Use of cryptocurrency such as monero**: Mullvad can use monero which is a private cryptocurrency that can be mined on a persons node, they also take in cash payments or deposits in mail.

However I'd like to point out that even with services like mullvad you'd still get caught on some circumstances even with a no log policy. Humans can deduce and figure stuff out on their own machines cannot and have to be guided. None of these tools are fullproof and the issue will exist between user and keyboard.

