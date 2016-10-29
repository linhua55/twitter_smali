.class public Lto;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a()V
    .locals 1

    .prologue
    .line 15
    invoke-static {}, Lbwk;->a()Lbwk;

    move-result-object v0

    invoke-static {v0}, Lto;->a(Lbwk;)V

    .line 16
    return-void
.end method

.method public static a(Lbwk;)V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Ltm;

    invoke-direct {v0}, Ltm;-><init>()V

    invoke-virtual {p0, v0}, Lbwk;->a(Lbwj;)V

    .line 20
    new-instance v0, Ltg;

    invoke-direct {v0}, Ltg;-><init>()V

    invoke-virtual {p0, v0}, Lbwk;->a(Lbwj;)V

    .line 21
    new-instance v0, Ltd;

    invoke-direct {v0}, Ltd;-><init>()V

    invoke-virtual {p0, v0}, Lbwk;->a(Lbwj;)V

    .line 22
    return-void
.end method
