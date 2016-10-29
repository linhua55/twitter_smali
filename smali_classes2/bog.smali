.class public Lbog;
.super Lbol;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbol",
        "<",
        "Lcom/twitter/model/dms/s;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;JZZ)V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p5}, Lbol;-><init>(Landroid/database/sqlite/SQLiteDatabase;JZZ)V

    .line 13
    return-void
.end method
