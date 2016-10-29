.class final Lcmm;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjk",
        "<",
        "Lcmf",
        "<TT;>;",
        "Lcmf",
        "<TT;>;",
        "Lcmf",
        "<TT;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcmf;Lcmf;)Lcmf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcmf",
            "<TT;>;",
            "Lcmf",
            "<TT;>;)",
            "Lcmf",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 81
    invoke-static {p1, p2}, Lcmk;->a(Lcmf;Lcmf;)Lcmf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    check-cast p1, Lcmf;

    check-cast p2, Lcmf;

    invoke-virtual {p0, p1, p2}, Lcmm;->a(Lcmf;Lcmf;)Lcmf;

    move-result-object v0

    return-object v0
.end method
