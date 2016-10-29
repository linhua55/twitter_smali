.class public Lbop;
.super Lbom;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbom",
        "<",
        "Lcom/twitter/model/dms/dd;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;JZZ)V
    .locals 0

    .prologue
    .line 15
    invoke-direct/range {p0 .. p5}, Lbom;-><init>(Landroid/database/sqlite/SQLiteDatabase;JZZ)V

    .line 16
    return-void
.end method


# virtual methods
.method a(Lcom/twitter/model/dms/dd;)V
    .locals 4

    .prologue
    .line 20
    iget-object v0, p0, Lbop;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    iget-wide v2, p1, Lcom/twitter/model/dms/dd;->a:J

    invoke-static {v0, v1, v2, v3}, Lbop;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    .line 21
    return-void
.end method

.method bridge synthetic a(Lcom/twitter/model/dms/g;)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Lcom/twitter/model/dms/dd;

    invoke-virtual {p0, p1}, Lbop;->a(Lcom/twitter/model/dms/dd;)V

    return-void
.end method
