## Section 4.4: Generation

See Figures 1-4 for a graphic representation of the RTC generation process. Any user with Generation Submittal permissions can submit Dth data into M-RETS. Each time M-RETS receives generation data for a generator, the date and quantity of Dths are posted to the Generation Log. Any fractional remainders will not issue certificates but will roll over to the next month of generation. Once uploaded, data will be labeled with one of the following:

<ul>
  <li>Accepted: Applies to all generation less than 1 Dth reported to M-RETS. The system will add this data to the subsequent month of generation for issuance.</li>
  <li>Issued: Applies to all generation 1 Dth or greater and indicates the Certificates are now active.</li>
  <li>Pending: Generation that fails feasibility and therefore needs M-RETS approval; or generation waiting to receive a 'Feedstock' allocation from a multi-feedstock generator. Pending Generation is not issued and therefore not represented by Active certificates.</li>
  </ul>

### Section 4.4.1: Generation Upload Process

An IRE or User must upload generation through the M-RETS portal. Users may upload all their generation for the whole month or in partial months as long as a whole month is uploaded. During the upload process, users must provide the Generator, vintage, Dth, and a complete allocation of Dth generated. During the upload, Users must declare whether the generation is 100% from renewable sources, or if the Generator used non-renewable sources.

Certificates created by Generators that Self-report (i.e. Generators that do not use an IRE) must also submit with the generation information an invoice, receipt, or other official documents that identify the Dth of gas injected.[[2]](#_ftn2) M-RETS reserves the right to reject the Generators documentation if there is any reason to suspect the documentation provided is altered, fraudulent, or suspicious. M-RETS also reserves the right to confirm with the entity that issues the document(s) that they are legitimate and not altered in any way. M-RETS may---but is not required to--- contact the Generator Owner prior to confirming with the entity. However, M-RETS will try to work out any issues with the Generator Owner prior to confirming the validity of the documentation with the issuing entity.  

M-RETS will also accept generation data via the M-RETS API directly from the Injection Point. Data received through an automated process does not require the same level of documentation as Self-Reporting Generators. Generators should work with M-RETS during the registration process to coordinate access to the API as well as connecting the proper points of contact between the common carrier pipeline or local distribution system operator and M-RETS.

### Section 4.4.2: Measurement of Generation and Adjustments (Qualified & Non-Qualified Generation)

For Generating Units that interconnect to a local gas distribution system M-RETS will measure the output from each Generating Unit at the point of interconnection between the Generating Unit and the local gas distribution system. If the Generating Unit interconnects to the common carrier interstate pipeline transportation system, M-RETS will measure the output from each Generating Unit at the meter located at the injection point.

Generators must report 100% of the gas injected into the system from the Generator at the injection point, even if the gas will not be tracked in M-RETS. This ensures that M-RETS can serve as a central repository for programs, including those not affiliated with M-RETS, to ensure against double-counting. M-RETS will not create certificates for the generation entered and designated as not being tracked on M-RETS. Generation that does not qualify for certificate issuance is called Non-Qualified Generation. Non-Qualified Generation includes Generation intended for a program that does not recognize M-RETS or is not considered renewable (e.g., non-renewable additives). Qualified Generation is any generation that qualifies for certificate issuance.

While entering generation information into the user interface, IRE's or Self-Reporting Generators must designate the exact number of certificates or the percentage of the injected gas sought for certificate generation on M-RETS. For example, if a Generator injects 100 Dth at the interconnection through the reporting period the IRE or Self-Reporting Generator must report 100 Dth. If the Self-Reporting Generator or IRE plans to sell 50 Dth into M-RETS and 50 Dth into the EPA RFS Program which is not currently recognized by the EPA as a nominated tracking system, M-RETS will only Issue 50 Dth. However, the system will maintain a record that 100 Dth were injected and will list to anyone with a Regulator/Program Administrator Account where the Dth went according to the information provided by the IRE or Self-Reporting Generator. In this example, it would show that the remaining 50 Dth as Non-Qualified Generation went to the RFS.

M-RETS will require RNG generators to utilize a revenue quality meter. However, M-RETS will consider registering RNG projects that lack a revenue quality meter at the request of the participant. If M-RETS does allow for the registration of projects with a non-revenue quality meter that will be clearly denoted on the Public Generator Report and/or on the actual certificate.   

### Section 4.4.3: Initial Reporting and Reporting Historic Generation Upon Generator Approval

Upon registration and subsequent approval, Generators have 90-days from the Generator Approval date to upload historic generation into the M-RETS System. M-RETS will allow generation within the first 90 days of a generator's approval up to 11 years from the year of registration. If a generator registers in January 2020, M-RETS will accept generation submitted within 90 days of approval going back to the year 2009. Any generation uploaded past the 90^th^ day from registration or more than 11 years back requires a Variance Request and if there is a program eligibility may require sign-off from the appropriate regulator. 

### Section 4.4.4: Generation Data Submittal Time Restrictions

To encourage timely reporting, M-RETS enabled automatic validations to generation uploads. Users have 62-days from the generation end date to upload generation. M-RETS must approve any generation outside of this range Failure to adhere to these ranges may lead to delays in receiving Certificates.

### Section 4.4.5: Requirements of Independent Reporting Entity (IRE) and Self-Reporting Generators

M-RETS will accept generation data from either an IRE or a Self-Reporting Generator. M-RETS will maintain a list in each IRE's Organization of the Generating Units for which the IRE is reporting. M-RETS will outline the protocols for the collection of information such as data format, communication protocols and timing, and security requirements for data collection. M-RETS will update this document when any changes are made that may impact the data collection process. To minimize the impact of document changes, this document is a general template that outlines a common approach and set of standards.

The Reporting Entity Terms of Use contain the specific data collection parameters for each reporting entity. M-RETS will work with the personnel from the IREs to verify the information and address specific requirements of each reporting entity. M-RETS reserves the right to audit the Dth data totals submitted at any time.

### Section 4.4.6: The Addition of Non-Renewable Fuels -- Non-Qualified Generation

M-RETS recognized that in some cases non-renewable fuels or gas may be blended with renewable fuels or gas (e.g., to achieve a specific heating value and/or meet other pipeline specifications). M-RETS will not create certificates for any Dth values that are added, regardless of the reason. Therefore, M-RETS considers Non-Renewable Fuels added to RNG Non-Qualified Generation. The non-renewable fuels will not receive certificates, however, M-RETS will include them as a non-renewable fuel in the Generation Entry. This will ensure there is a record and that the injection documentation matches the generation values.

Self-Reporting Entities and IRE's must document to M-RETS through the generation upload process the Dth value of the non-renewable fuels or gas blended with the renewable fuels that qualify for M-RETS. The value may be reported as a specific Dth value or as an overall percentage. Prior to submitting generation data, IRE's and Self-Reporting generators certify that they have acknowledged any non-renewable fuels or gas that were blended.

### Section 4.4.7: Carbon Pathways

M-RETS supports tracking one or more Carbon Pathways that provide a Carbon Intensity ("CI") tracking. While tracking CI **is not** mandatory, M-RETS encourages generators to submit and track a CI whenever practicable. CI values are expressed in grams of carbon dioxide equivalent per megajoule of energy (*gCO~2~e/MJ*) as well as (*gCO~2~e/Dth*). M-RETS supports either a Full Lifecycle CI or a Partial Lifecycle CI.

<ol>
  <li>Full Lifecycle Carbon Intensity - takes into account the GHG emissions associated with all of the steps of producing, transporting, and consuming a fuel.</li>
  <li>Partial Lifecycle Carbon Intensity -- takes into account the GHG emissions associated with all of the steps of producing a fuel up to the Injection Point or interconnection into the distribution system or interstate transportation system.</li>
  </ol>

Lifecycle CI scores for RNG require an assessment of all sources and sinks of GHGs---from production to end-use---and dividing these emissions by the energy in the gas at a specific point in that lifecycle. The resulting value is measured on a carbon dioxide equivalency basis. This is important because Methane is a short-lived climate pollutant that, according to the Intergovernmental Panel on Climate Change, is up to 84 times as potent a GHG as carbon dioxide.[[3]](#_ftn3)

The benefits of using lifecycle CI accounting are that it captures the upstream methane reduction benefits of renewable thermal projects and reduces the GHG value for project proportionate to the distance the thermal resource must travel (e.g., transportation associated emissions including pipeline leakage) and whether the end-use has any associated emissions (e.g., thermal combustion). This feature allows M-RETS users to maximize GHG emission reductions should users seek to do that.

Upon retirement, users may select an existing partial or full lifecycle CI to select. The selected CI will remain as part of the permanent retirement record. The retirement flow does not require the selection of a CI; however, it may be required as part of a voluntary or compliance program.

Partial CI scores may be helpful for generators that have not identified an end-use buyer prior to uploading generation. A future buyer may be able to use the CI provided to calculate a full lifecycle analysis outside M-RETS.  

The alternative to using lifecycle accounting is to use source-based accounting similar to that used in national and state-level GHG emission inventories.[[4]](#_ftn4) Source-based accounting is simpler in that it focuses only on the greenhouse gases emitted at the point of end combustion of the gas and usually makes the assumption that all bio-derived fuels are "carbon neutral" (i.e., have zero net CO2 emissions since CO2 created at the point of combustion are offset by the uptake of CO2 when the biological material that was the source of the RNG was grown). Using such a source-based system does not account for upstream methane effects (both reductions when the RNG is created and leakage as the gas is transported to the end market).

M-RETS does not require Generator Owners to update the Carbon Pathways at specific intervals. Instead, each Carbon Pathway has a date range. The first date in the range represents the verification date by an independent third party. The last date in the range represents the last day that certificates can be issued with that Carbon Pathway. Certificates issued following the last day of the date range will no longer maintain the Carbon Pathway. Should a state or provincial regulatory scheme require annual updates, the eligibility flag will be removed if valid Carbon Pathways are not maintained by the generator and/or the specific Thermal Resource and Feedstock. For a generator to maintain the IRE eligibility the Generator must at a minimum update each Carbon Pathway associated with a generator annually.

### Section 4.4.8: IRE Verification Scope

Certificates reported into the system by an IRE must adhere to a strict standard. Certificates uploaded into the system by an IRE will carry an IRE eligibility. That will indicate the certificates have gone through a strict independent third-party verification. Failure to adhere to the standards agreed to between M-RETS, the Generator Owner, and the IRE may result in removal of a Generator from the M-RETS system, cancellation of any certificates suspected of incorrectly maintaining an IRE eligibility, and removal of the IRE from further participation in M-RETS.

IREs must strictly adhere to the following independent third-party verification process. IRE's may adhere to a stricter process, however, in no case shall an IRE do less than required below.

|*Verification objective*|*Method*|*Frequency*|
|-------------------------|--------|----------|
|1. The carbon intensity (CI) of the RNG source is equal to or less than what is claimed initially. If more than one, each CI must be done. Generators that utilize an IRE but do not track a CI are exempt from this requirement.|1. Review all inputs and outputs that could affect CI<br> 2. Recalculate CI based on annual data <br>3. Confirm annual CI is within an acceptable range <br>4. Prepare report and upload to the M-RETS System via the Generator Documents|Annual|
|2. Reported gas volumes injected into the common carrier pipeline are accurate|1. Review EDI/meter data <br>2. Submit gas volumes injected into the M-RETS System<br>3. Review meter calibration<br>4. Compare with proof of biogas production <br>5. Verify biogas production from inputs/outputs<br>6. Confirm upgrading unit efficiency<br>7. Prepare a report of the above and upload it to M-RETS via the generation submission process.|Monthly (via attestation, and becomes attached to certificate and visible to future owners in the chain of custody)|
|3. The RNG production site is physically connected to a common carrier pipeline|Visual inspection|Annual|
|4. The Environmental Attributes are intact, and the same gas claimed in M-RETS is not sold elsewhere.|Affidavit from biogas producer and RNG producer and upload Affidavits into M-RETS via the Generator Documents Portal.|Quarterly (provided one time at the Annual Review on or after January 1)|

### Section 4.4.9: Changes to Issuances (Rollbacks and Prior Period Adjustments)

The User must notify M-RETS if they believe the generation data amount recorded on the Generation Log is inaccurate for any reason. This is known as registering a dispute. Adjustments made after the upload of generation data to M-RETS and/or Certificate issuance are known as Rollbacks or Prior Period Adjustments.

If the IRE or User uploaded incorrect generation data and the Certificates remain in the issuance Account, M-RETS will Rollback the issuance. Once the Rollback is complete, the Certificates may be re-uploaded.

If the IRE or User uploaded incorrect generation data and the Certificates do not remain in the issuance Account, a Prior Period Adjustment is required. M-RETS will post the Prior Period Adjustment to the Generation Log associated with the Generating Unit. This will have the effect of applying a credit or debit to the generation amount reported in the current month. Consequently, the adjustment occurs upon the next Certificate issuance. If new Certificates are created, the month of creation of the Certificates shall be the same as all other Certificates created that month. However, the Certificates will also indicate the month the prior period generation occurred.

If a User requests a Rollback outside of the acceptable upload range, M-RETS may require evidence of data inaccuracy. This includes, but is not limited to:

<ol>
  <li>Screenshot(s) of internal readings</li>
  <li>Official readouts of generation</li>
  </ol>

All requests for Rollbacks and Prior Period Adjustments are subject to review by M-RETS.

### Section 4.4.10: Data Transmittal

Users must electronically enter data to M-RETS using a secured web interface provided within the M-RETS web-based application. The data shall reflect, at a minimum, the start date and end date of generation, monthly accumulated dekatherms for each fuel type (including Non-Renewable Additives), and Generation Document.

The data must be entered by a single entity, which must be either (1) an IRE, or (2) a Self-Reporting Generator.

* * * * *

[[1]](#_ftnref1) **Co-digestion **is used to increase methane production from low-yielding or difficult-to-digest materials (i.e., feedstocks).

[[2]](#_ftnref2) If the documentation does not use Dth, the documentation must include values that would allow the M-RETS System Administrator to determine the Dth value. If this is not possible the Generator must work this out with the M-RETS System Administrator prior to uploading.

[[3]](#_ftnref3) *See *<https://www.ipcc.ch/site/assets/uploads/2018/02/WG1AR5_Chapter08_FINAL.pdf>.

[[4]](#_ftnref4) *See *ICF, December 2019, *Renewable Sources of Natural Gas: Supply and Emissions Reduction Assessment*, prepared for the American Gas Foundation (pg. 44-47, Appendix B) https://www.gasfoundation.org/wp-content/uploads/2019/12/AGF- 2019-RNG-Study-Full-Report-FINAL-12-18-19.pdf (describing how these approaches related to RNG).
