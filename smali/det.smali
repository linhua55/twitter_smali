.class public Ldet;
.super Ldeq;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ldeq;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    invoke-static {}, Lder;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
