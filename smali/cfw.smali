.class public Lcfw;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcfs;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcfs",
        "<",
        "Lcft;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcfs;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcfs",
            "<",
            "Lcft;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    new-instance v0, Lcfw;

    invoke-direct {v0}, Lcfw;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Lcft;)V
    .locals 0

    .prologue
    .line 11
    invoke-static {p1}, Lbjf;->a(Lbjh;)V

    .line 12
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 7
    check-cast p1, Lcft;

    invoke-virtual {p0, p1}, Lcfw;->a(Lcft;)V

    return-void
.end method
