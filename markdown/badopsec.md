## 📚 Table of Contents

1. [Here are some notable examples of bad Tor OPSEC](#here-are-some-notable-examples-of-bad-tor-opsec)
* 1.1 [School Bomb Threats](#school-bomb-threats)
   * [Florida High School Student](#florida-high-school-student)
   * [Harvard Student Eldo Kim](#harvard-student-eldo-kim)
* 1.2 [Silk Road Case](#silk-road-case)
* 1.3 [LulzSec Hacking Group](#lulzsec-hacking-group)
* 1.4 [General Bad OPSEC Practices](#general-bad-opsec-practices)

3. [External Lists on GitHub](#a-few-lists-i-found-on-github)

4. [Mullvad VPN: A Contrast in Security](#mullvad-vpn-a-contrast-in-security)

5. [Final Thoughts](#final-thoughts)
6. [References](#References)
7. Back to [main guide](../README.md)

# Here are some notable examples of bad Tor OPSEC:

In short

[You Didn't Have to Post That](https://www.youtube.com/watch?v=AkQaL9SU2BY)

### Harvard Student Eldo Kim

Eldo Kim, a Harvard student, emailed bomb threats over Tor to avoid taking exams[^doj]. His OPSEC mistakes were:

1. Using the school network to access Tor
2. Being the only Tor user on the network at the time of the threat
3. Admitting to the crime when questioned by police

## Silk Road Case

Ross Ulbricht, alleged operator of the Silk Road dark web marketplace, made several OPSEC blunders[^ulbricht]:

1. Using his real name email ([email protected]) in forum posts seeking IT help
2. Posting on Stack Overflow about Tor hidden services under a username later linked to Silk Road
3. Mentioning Tor and Silk Road to customs officials when caught with fake IDs
4. Failing to protect the real IP address of Silk Road servers

## LulzSec Hacking Group

Members of the LulzSec hacking group made various OPSEC mistakes [^fbi] [^purdue]:

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

However I'd like to point out that even with services like mullvad you'd still get caught on some circumstances even with a no log policy. Humans can deduce and figure stuff out on their own machines cannot and have to be guided. None of these tools are fullproof and the issue will exist between user and keyboard. See also the [main guide](../README.md#how-to-opsec).


## References:

[^ulbricht]: United States, Department of Justice. "Ross Ulbricht, A/K/A “Dread Pirate Roberts,” Sentenced In Manhattan Federal Court To Life In Prison." *Justice.gov*, 29 May 2015, https://www.justice.gov/usao-sdny/pr/ross-ulbricht-aka-dread-pirate-roberts-sentenced-manhattan-federal-court-life-prison. Accessed 22 Sept. 2025.

[^doj]: "Harvard Student Charged with Making Hoax Bomb Threat." *United States Department of Justice*, U.S. Attorney's Office, District of Massachusetts, 22 Apr. 2015, www.justice.gov/usao-ma/pr/harvard-student-charged-making-hoax-bomb-threat.


[^fbi]: "Leading Member of the International Cyber Criminal Group 'LulzSec' Sentenced in Manhattan Federal Court." *Federal Bureau of Investigation*, U.S. Department of Justice, Field Office: New York, 18 May 2016, www.fbi.gov/contact-us/field-offices/newyork/news/press-releases/leading-member-of-the-international-cyber-criminal-group-lulzsec-sentenced-in-manhattan-federal-court.

[^purdue]: "Hacktivism: The Short Life of LulzSec." *Purdue Cybersecurity Blog*, Purdue University, 15 Mar. 2023, cyber.tap.purdue.edu/blog/articles/hacktivism-the-short-life-of-lulzsec/.