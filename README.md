#  DispatchGroupSubclass

`DispatchGroup` is defined as an `open` class, but it does not permit subclassing. For example, I subclassed, defined a method in that subclass, and attempting to call that method results in an `EXC_BAD_ACCESS`:

![crash](crash.png)

Also note that in the debug “Variables View”, that my `group` variable is reported as a `DispatchGroup`, not as my subclass, `MyGroup`.

I am familiar with the legacy of GCD API and types, and assume that it cannot easily be refactored to support subclassing. I would therefore suggest:

* Declare it to be `final` to make it clear that it cannot be subclassed (assuming, of course, that this doesn't introduce other issues).
* At the very least, update the documentation to make it explicit that `DispatchGroup` (and other GCD objects that suffer from the same limitation) cannot be subclassed.

---

Rob Ryan
8 December 2020
