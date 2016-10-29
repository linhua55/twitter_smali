.class public final Lcom/twitter/database/hydrator/TwitterHydrationRegistrar;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/database/hydrator/HydrationRegistry$Registrar;


# annotations
.annotation build Latx;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/database/hydrator/b;)V
    .locals 3

    .prologue
    .line 23
    const-class v0, Lcom/twitter/database/schema/b;

    const-class v1, Lcom/twitter/model/drafts/d;

    new-instance v2, Lbbk;

    invoke-direct {v2}, Lbbk;-><init>()V

    invoke-interface {p1, v0, v1, v2}, Lcom/twitter/database/hydrator/b;->a(Ljava/lang/Class;Ljava/lang/Class;Lcmx;)V

    .line 24
    const-class v0, Lbew;

    const-class v1, Lcom/twitter/model/core/cm;

    new-instance v2, Lbbl;

    invoke-direct {v2}, Lbbl;-><init>()V

    invoke-interface {p1, v0, v1, v2}, Lcom/twitter/database/hydrator/b;->a(Ljava/lang/Class;Ljava/lang/Class;Lcmx;)V

    .line 25
    const-class v0, Lbeq;

    const-class v1, Lcom/twitter/model/core/TwitterUser;

    new-instance v2, Lbbn;

    invoke-direct {v2}, Lbbn;-><init>()V

    invoke-interface {p1, v0, v1, v2}, Lcom/twitter/database/hydrator/b;->a(Ljava/lang/Class;Ljava/lang/Class;Lcmx;)V

    .line 26
    const-class v0, Lcpf;

    const-class v1, Lbhz;

    new-instance v2, Lbbm;

    invoke-direct {v2}, Lbbm;-><init>()V

    invoke-interface {p1, v0, v1, v2}, Lcom/twitter/database/hydrator/b;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/twitter/database/hydrator/a;)V

    .line 27
    return-void
.end method
