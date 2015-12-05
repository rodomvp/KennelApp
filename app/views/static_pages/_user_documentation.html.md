# User Documentation for Kennel Management Software

revised: Dec 4, 2015 

<!-- TODO: add table of contents, or navigation of some sort -->
<!-- TODO: replace the mockup images with real images -->

## Introduction

This document is an end user's guide to the Kennel Management Software.

![The *Ward View* is the primary interface.](ward-view.png)

The **[Ward View]** is the primary interface from which most tasks can be
accomplished. This view also provides ways to arrive at secondary views.

The major secondary interfaces (not shown) include:


- The **Calendar View** 

    + Generally used for _[Scheduling and reservations]_

- The **Patient Profile View** and the **Client Profile View**

    - Generally used for _[Managing clients' and patients' profiles]_.


-------------------------------------------------------------------

## Ward View

![The *Ward View* mockup.\label{ward-view}](ward-view.png)

Most tasks can be accomplished from the **Ward View** (figure \ref{ward-view}). 
Several features immediately worth noting are described below.

### Run indication timers

The run indication timer gives the user a visual cue as to which runs house
animals that will soon require action or attention. To reset a timer, update a
patient's U/D chart indicating that the patient was seen to, see 'Updating a
patient's log' below.

### Different types of runs

In the ward view, the different types of runs are marked by visual
representations of their relative sizes.

### Switching a patient's run

Click 'swap run' under the patient's options in the ward view, and then
navigate to the run of the patient with which you want to switch.


-------------------------------------------------------------------

## Tasks related to Patient Care

Tasks related to patient care can be accomplished from the _[Ward View]_.

### Generating a feeding list

To print the feeding list for a given shift, start at the _[Ward View]_, then
simply click on "print feeding list". The system will automatically generate a
list of every dog's diet, separated by ward (figure \ref{feeding-list}). Dogs
that are currently NPO (Nil per os) will be indicated as such on the feeding
list.

![The *Feeding List* mockup.\label{feeding-list}](feeding-list.png)

### Patient's log and medical records

Users can log information about a patient's health through a patient's log or
by adding medical records. 

To perform these operations, first navigate to the patient's run using the
_[Ward View]_, and click on the patient's run.

#### Viewing a Patient's log

The user can choose from several different presentations under the 'view' drop
down menu.

To choose a basic presentation showing all details of all events, sorted by
default in chronological order (but sortable and filterable by any of the
columns) choose 'basic'.

To choose a more intuitive executive summary that highlights exceptional
information (e.g. instances when patient has refused food), choose "summary"

To examine the urination and defecation chart, scaled along the vertical or
horizontal axis by time, choose 'U/D'.

#### Updating a Patient's log

The left hand side of the screen will have the patient's log. First, choose the
'basic' view then click 'edit' and enter in changes to a patient's feed log,
medicine log, bathing log, or 

To update a patient's U/D chart, navigate to the 'U/D' view then click 'edit'.
Add in the time of the patient's walk then the state of the patient's movement
for both urination and defecation using the codes: N for normal, A for
abnormal, or X for no movement. If you would like to include more information
click 'add comment'.

#### Updating and Viewing a patient's medical records

The left hand side of the screen will have the patient's medical records
labeled 'Medical History'. To add a new medical record, click 'New Record'.
Then, type in the medical information in the given text box. You can edit any
record by first choosing the record then clicking 'edit'.


-------------------------------------------------------------------

## Managing clients' and patients' profiles

Client and patient profiles can be administered from navigatoin bar at the
top of the _[Ward View]_ (patient profiles can also be accessed from within
their runs in the ward view).

### Viewing client profile

1. Click on the name and the profile will be brought to center screen

### Viewing patient profile

1. Click on the name and the profile will be brought to center screen

### Adding a new client

Enter the client's:

- Name
- Phone Number
- Address
- Email
- Pets (directed to add patient screen)
- Misc. preferences and notes

If there is a client with the same name in the database, the system will ask
the user for confirmation

### Adding a new patient

Click on 'Add New Patient', and enter the patient's:

- Name
- Breed
- Weight
- Diet
- Medical History
- Notes
- Physical info (color, black spots, etc.)

### Editing a client or patient's information

View the profile that is to be edited, and click 'edit profile'. From there,
simply overwrite old information with the new.

### Removing a client or patient from the system

View the profile that is to be deleted, and click 'delete profile'. The user
will be asked for the master password to confirm.


-------------------------------------------------------------------

## Scheduling and reservations

### Scheduling a new appointment

To schedule an appointment:

1. Validate that the patient as well as the client are in the system. 

    + Enter the patient's name into an input box, where it will be checked
      against the database. 

    + If there is no record of the patient the user will be redirected to the
      patient registration system

2. Choose an open time slot from the _Calendar View_ 

    + Select a slot on the schedule that is available to book an appointment. 
  
    + Set a check-in and check-out time

3. Book a run for the patient. 

    + Select an available run using the ward view

### Canceling an appointment

Canceling an appointment is as simple as selecting an appointment from the
scheduling matrix and clicking 'cancel'

### Changing a reservation

To change a reservation, first cancel the original appointment and go through
the registration process for a new appointment at the desired time slot


-------------------------------------------------------------------

## Patient Check-in and Check-out

### Checking in a patient

When a patient arrives at the facility, a user will select "Check in" from the
home screen. 

- If the patient already has an appointment, the user will have the option to
  update information about the patient.

  + This information includes: weight, diet, and patient belongings

- If the patient is a walk-in, the user will enter the patient's name into
  the system.

- If the patient and client are already registered, the user will be directed
  to steps 2 and 3 of scheduling an appointment

- If the patient and client are not registered, the user will be directed to
  the beginning of scheduling an appointment

Once the patient is checked in, the ward view run assigned to them will change
status from (booked) to (occupied)

### Checking out a patient

When a patient is ready to leave the facility, a user will select "Check out"
from the home screen

- If the patient is checking out late, a prominent visual cue will display

- If the patient had any belongings, a list of them will display for
  confirmation

Once the patient is checked out, the _[Ward View]_ will show that the run
assigned to them will change status from (occupied) to (available)


-------------------------------------------------------------------

## FAQ + How to submit questions and bug reports

No questions have been asked yet. Please ask us questions and report bugs! 

> **email**: <Support@KennelManagementSoftware.com>
> 
> **phone**: (800) 404-1337

