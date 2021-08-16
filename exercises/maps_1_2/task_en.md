# Visitors

## Step 1: add some tests

Create a test scenario for  the visitors example contract.

In particular, test:
- the registration of a new user
- multiple visits from that user
- check that visits are counted correctly

## Step 2

Modify the contract so that:

- The address of the caller is used, rather than a login, to identify users.
- Make users pay 5 tez for the first visit, and 3 tez for the next ones
- Enforce a delay of a minimum of 10 days between two visits of the same user.

Test these changes
