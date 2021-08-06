## Section 4.6: Transactions

### Section 4.6.1: Transferring Certificates between Organizations

M-RETS Users may transfer active Certificates to:

<ol>
  <li>Another Organization</li>
  <li>Another active Account</li>
  </ol>

After a User initiates a transfer ("Transferor"), the transferred Certificates enter a 'Pending' state. This effectively "suspends" the Certificates and the System will prevent the Transferor from making additional transfers of Certificates in Pending status.

The Pending Transactions table lists all Pending Transactions for both the Transferor and Transferee. Once the Transferee confirms the transfer, both the Transferor and Transferee receive an email if their notifications are enabled.

The Transferor may cancel any transfer before a Transferee confirms the transfer by withdrawing the transfer in the Pending Transactions table. The Transferee may reject a transfer prior to acceptance. M-RETS will notify both the Transferor and Transferee should either party withdraw or reject a transfer.

### Section 4.6.2: Automatic Recurring Transfers

Users may request Automatic Recurring Transfers of Certificates from any Generator Resource Type to the following:

<ol>
  <li>One internal Account</li>
  <li>Multiple internal Accounts</li>
  <li>An external Organization within M-RETS</li>
  </ol>

In the registration of Automatic Recurring Transfer, the transferor must indicate:

<ol>
  <li>Generator</li>
  <li>Generator Feedstock</li>
  <li>Generator Resource Type</li>
  <li>Vintage Dates</li>
  <li>Destination (Account, Multiple Accounts, External Organization)</li>
  <li>Percentage or Maximum Number of Certificates</li>
  <li>Irrevocable status (see Section 4.6.4: Irrevocable Automatic Recurring Transfers)</li>
  </ol>

After a User initiates an Automatic Recurring Transfer (“Transferor”), the Automatic Recurring Transfer enters a ‘Pending’ state. The receiving Organization (“Transferee”) then receives an email detailing the pending Automatic Recurring Transfer.

The Transferee must accept each transfer in the System prior to the deposit of the Certificates in the Transferee's Account. An acceptance of an Automatic Recurring Transfer does not automatically accept subsequent transfers. The System requires a manual acceptance by the Transferee in case of an unwanted or incorrect Automatic Recurring Transfer.

A User may set up multiple Automatic Recurring Transfers. However, each Generator Feedstock Type may only be associated with one Automatic Recurring Transfer. For example, if your Generator uses both Biomass and Liquid Biomass as a Feedstock, you will be able to create an Automatic Recurring Transfer for the Biomass feedstock and a separate Automatic Recurring Transfer for the Liquid Biomass Feedstock. Single-feedstock Generators may only set one Automatic Recurring Transfer at a time.

Each Automatic Recurring Transfer will be set up based on a percentage of Certificates or a maximum number of Certificates. If fewer Certificates are issued than the maximum number specified, the total number of Certificates issued will transfer. If the Certificates are transferring to multiple Accounts, Users may prioritize the receiving Accounts. If there is a remainder, the User-set priority determines where to deposit the remaining Certificates.

### Section 4.6.3: Irrevocable Automatic Recurring Transfers

From a technical standpoint, Irrevocable Automatic Recurring Transfers are like Automatic Recurring Transfers. However, only M-RETS can edit an Irrevocable Automatic Recurring Transfer. A change requires written electronic consent from the Transferor and Transferee.  During the creation of Automatic Recurring Transfers, Users can select an option to apply Irrevocable status to the Automatic Recurring Transfer.
