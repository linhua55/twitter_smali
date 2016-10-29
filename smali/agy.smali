.class public Lagy;
.super Lcom/twitter/app/common/inject/e;
.source "Twttr"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/twitter/app/common/inject/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/twitter/library/provider/dm;Lcom/twitter/app/common/account/UserIdentifier;)Lcet;
    .locals 4

    .prologue
    .line 22
    new-instance v0, Lcet;

    invoke-virtual {p3}, Lcom/twitter/app/common/account/UserIdentifier;->b()J

    move-result-wide v2

    invoke-direct {v0, p1, p2, v2, v3}, Lcet;-><init>(Landroid/content/Context;Lcom/twitter/library/provider/dm;J)V

    return-object v0
.end method
