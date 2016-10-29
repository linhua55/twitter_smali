.class Lco;
.super Lcu;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<INFO:",
        "Ljava/lang/Object;",
        ">",
        "Lcu",
        "<TINFO;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcu;-><init>()V

    return-void
.end method

.method public static a(Lct;Lct;)Lco;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<INFO:",
            "Ljava/lang/Object;",
            ">(",
            "Lct",
            "<-TINFO;>;",
            "Lct",
            "<-TINFO;>;)",
            "Lco",
            "<TINFO;>;"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Lco;

    invoke-direct {v0}, Lco;-><init>()V

    .line 61
    invoke-virtual {v0, p0}, Lco;->a(Lct;)V

    .line 62
    invoke-virtual {v0, p1}, Lco;->a(Lct;)V

    .line 63
    return-object v0
.end method
