.class public final Lawj;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Laxl;


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Laxo;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/app/common/di/g;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Ljava/util/Set",
            "<",
            "Lcom/twitter/app/common/di/g;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/android/vr;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lawj;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lawj;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lawl;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-boolean v0, Lawj;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 31
    :cond_0
    invoke-direct {p0, p1}, Lawj;->a(Lawl;)V

    .line 32
    return-void
.end method

.method synthetic constructor <init>(Lawl;Lawk;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lawj;-><init>(Lawl;)V

    return-void
.end method

.method public static a()Lawl;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lawl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lawl;-><init>(Lawk;)V

    return-object v0
.end method

.method private a(Lawl;)V
    .locals 2

    .prologue
    .line 41
    .line 44
    invoke-static {p1}, Lawl;->a(Lawl;)Lcom/twitter/app/tweetdetails/internal/c;

    move-result-object v0

    .line 43
    invoke-static {v0}, Lcom/twitter/app/tweetdetails/internal/e;->a(Lcom/twitter/app/tweetdetails/internal/c;)Ldagger/internal/c;

    move-result-object v0

    .line 42
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lawj;->b:Lden;

    .line 46
    iget-object v0, p0, Lawj;->b:Lden;

    .line 47
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lawj;->c:Lden;

    .line 49
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 50
    invoke-static {v0, v1}, Ldagger/internal/e;->a(II)Ldagger/internal/g;

    move-result-object v0

    iget-object v1, p0, Lawj;->c:Lden;

    .line 51
    invoke-virtual {v0, v1}, Ldagger/internal/g;->a(Lden;)Ldagger/internal/g;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ldagger/internal/g;->a()Ldagger/internal/e;

    move-result-object v0

    iput-object v0, p0, Lawj;->d:Lden;

    .line 57
    invoke-static {p1}, Lawl;->a(Lawl;)Lcom/twitter/app/tweetdetails/internal/c;

    move-result-object v0

    .line 56
    invoke-static {v0}, Lcom/twitter/app/tweetdetails/internal/d;->a(Lcom/twitter/app/tweetdetails/internal/c;)Ldagger/internal/c;

    move-result-object v0

    .line 55
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lawj;->e:Lden;

    .line 58
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
    .line 62
    iget-object v0, p0, Lawj;->d:Lden;

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public c()Lcom/twitter/android/vr;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lawj;->e:Lden;

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/vr;

    return-object v0
.end method

.method public d()Laxo;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lawj;->b:Lden;

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxo;

    return-object v0
.end method
