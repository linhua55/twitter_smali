.class public final Lcom/twitter/android/av/monetization/a;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/av/monetization/p;


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Ltv;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lrx/o",
            "<",
            "Lcmf",
            "<",
            "Lcom/twitter/model/av/MonetizationCategory;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/twitter/android/av/monetization/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/twitter/android/av/monetization/a;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/twitter/android/av/monetization/c;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-boolean v0, Lcom/twitter/android/av/monetization/a;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 35
    :cond_0
    invoke-direct {p0, p1}, Lcom/twitter/android/av/monetization/a;->a(Lcom/twitter/android/av/monetization/c;)V

    .line 36
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/av/monetization/c;Lcom/twitter/android/av/monetization/b;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/twitter/android/av/monetization/a;-><init>(Lcom/twitter/android/av/monetization/c;)V

    return-void
.end method

.method public static a()Lcom/twitter/android/av/monetization/c;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lcom/twitter/android/av/monetization/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/android/av/monetization/c;-><init>(Lcom/twitter/android/av/monetization/b;)V

    return-object v0
.end method

.method private a(Lcom/twitter/android/av/monetization/c;)V
    .locals 1

    .prologue
    .line 45
    .line 48
    invoke-static {p1}, Lcom/twitter/android/av/monetization/c;->a(Lcom/twitter/android/av/monetization/c;)Ltw;

    move-result-object v0

    .line 47
    invoke-static {v0}, Lty;->a(Ltw;)Ldagger/internal/c;

    move-result-object v0

    .line 46
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/av/monetization/a;->b:Lden;

    .line 50
    new-instance v0, Lcom/twitter/android/av/monetization/b;

    invoke-direct {v0, p0, p1}, Lcom/twitter/android/av/monetization/b;-><init>(Lcom/twitter/android/av/monetization/a;Lcom/twitter/android/av/monetization/c;)V

    iput-object v0, p0, Lcom/twitter/android/av/monetization/a;->c:Lden;

    .line 62
    iget-object v0, p0, Lcom/twitter/android/av/monetization/a;->c:Lden;

    .line 64
    invoke-static {v0}, Ltx;->a(Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 63
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/av/monetization/a;->d:Lden;

    .line 66
    return-void
.end method


# virtual methods
.method public b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/twitter/app/common/di/g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    invoke-static {}, Ldagger/internal/e;->a()Ldagger/internal/c;

    move-result-object v0

    invoke-interface {v0}, Ldagger/internal/c;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/twitter/android/av/monetization/a;->b:Lden;

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public d()Lrx/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/o",
            "<",
            "Lcmf",
            "<",
            "Lcom/twitter/model/av/MonetizationCategory;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/twitter/android/av/monetization/a;->d:Lden;

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/o;

    return-object v0
.end method
