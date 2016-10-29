.class public Lcom/xspotlivin/analytics/summary/b;
.super Lcom/xspotlivin/analytics/summary/a;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    const-string/jumbo v0, "None"

    invoke-direct {p0, v0}, Lcom/xspotlivin/analytics/summary/a;-><init>(Ljava/lang/String;)V

    .line 11
    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 16
    const-string/jumbo v0, "None"

    return-object v0
.end method
