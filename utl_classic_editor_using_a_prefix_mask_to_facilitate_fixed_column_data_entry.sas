
Classic editor using a prefix mask to facilitate fixed column data entry

Supose you need to add a record according to a template between
two existing records

see github
https://tinyurl.com/y8wedcgk
https://github.com/rogerjdeangelis/utl_classic_editor_using_a_prefix_mask_to_facilitate_fixed_column_data_entry

INPUT
=====

The mask

Command ===

MASK1 <--NAME--->   <------STREET------->   <--CITY---->   <-STATE->   <---ZIP--->

and some data to edit ot add records

00001  Roger            1 Main St             Tao            NM          40745
00002  Mary           1 N Main St             Paris          TX          80123


EXAMPLE OUTPUT
---------------

Add Kates data

00001  Roger            1 Main St             Tao            NM          40745
00002  Kate           2 S main St             Erie           PA          70456  *** add this
00003  Mary           1 N Main St             Paris          TX          80123


PROCESS
=======

Steps
  1. Create the mask
  2. Insert the mask where you want to add data
  3. Use the mask template to add Kates data

1. Create the mask

  Create a mask and save the mask.
  To clear the mask type 'reset' on the command line

  Type mask in the prefix area and then type out the mask template

  Command ===
  MASK1 <--NAME--->   <------STREET------->   <--CITY---->   <-STATE->   <---ZIP--->
  00001
  00002
  00003

  After you hit enter the mask will be saved

2. Insert the mask where you want to add data

  Now suppose you need to add data in between these two records.

  Type MASK in record three prefix area

  00001  Roger            1 Main St             Tao            NM          40745
  00002  Mary           1 N Main St             Paris          TX          80123
  MASK3

  00001  Roger            1 Main St             Tao            NM          40745
  00002 <--NAME--->   <------STREET------->   <--CITY---->   <-STATE->   <---ZIP--->
  00003   Mary           1 N Main St             Paris          TX         80123

3. Use the mask template to add Kates data

  Hit enter after the last bar on line 2

  00001  Roger            1 Main St             Tao            NM          40745
  00002 <--NAME--->   <------STREET------->   <--CITY---->   <-STATE->   <---ZIP--->
  00003    Kate         2 S main St             Erie           PA          70456
  00004  Mary           1 N Main St             Paris          TX          80123

  When you save your work the masked template will not be saved with the data


OUTPUT
======

00001  Roger            1 Main St             Tao            NM          40745
00002  Kate           2 S main St             Erie           PA          70456  *** add this
00003  Mary           1 N Main St             Paris          TX          80123



