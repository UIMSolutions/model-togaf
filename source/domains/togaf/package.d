module models.togaf;

@safe:
// DLang libraries (Phobos)
public import std.stdio;
public import std.string;
public import std.uuid;

// External libraries
public import vibe.d;

// UIM libraries
public import uim.core;
public import uim.oop;
public import uim.entities;

// public import models.applications;

public import models.togaf.attributes;
public import models.togaf.entities;

static this() {
  EntityRegistry
    .register(
      TogafGbbEntity,
      TogafAbbEntity,
      TogafLbbEntity
    );
}
