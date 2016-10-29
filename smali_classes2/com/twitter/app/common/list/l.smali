.class public final Lcom/twitter/app/common/list/l;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/app/common/list/z;


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Landroid/view/LayoutInflater;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/app/common/list/aj;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/app/common/list/aa",
            "<",
            "Ljava/lang/Object;",
            "Lcvt",
            "<",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private f:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/app/common/inject/v;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/twitter/app/common/list/l;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/twitter/app/common/list/l;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/twitter/app/common/list/n;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-boolean v0, Lcom/twitter/app/common/list/l;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 35
    :cond_0
    invoke-direct {p0, p1}, Lcom/twitter/app/common/list/l;->a(Lcom/twitter/app/common/list/n;)V

    .line 36
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/app/common/list/n;Lcom/twitter/app/common/list/m;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/twitter/app/common/list/l;-><init>(Lcom/twitter/app/common/list/n;)V

    return-void
.end method

.method private a(Lcom/twitter/app/common/list/n;)V
    .locals 3

    .prologue
    .line 45
    .line 47
    invoke-static {p1}, Lcom/twitter/app/common/list/n;->a(Lcom/twitter/app/common/list/n;)Lcom/twitter/app/common/list/ap;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/app/common/inject/g;->a(Lcom/twitter/app/common/inject/f;)Ldagger/internal/c;

    move-result-object v0

    .line 46
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/common/list/l;->b:Lden;

    .line 49
    iget-object v0, p0, Lcom/twitter/app/common/list/l;->b:Lden;

    .line 51
    invoke-static {v0}, Lcom/twitter/app/common/inject/i;->a(Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 50
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/common/list/l;->c:Lden;

    .line 54
    invoke-static {p1}, Lcom/twitter/app/common/list/n;->a(Lcom/twitter/app/common/list/n;)Lcom/twitter/app/common/list/ap;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/app/common/list/aq;->a(Lcom/twitter/app/common/list/ap;)Ldagger/internal/c;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/common/list/l;->d:Lden;

    .line 59
    invoke-static {}, Ldagger/internal/MembersInjectors;->a()Lddo;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/app/common/list/l;->c:Lden;

    iget-object v2, p0, Lcom/twitter/app/common/list/l;->d:Lden;

    .line 58
    invoke-static {v0, v1, v2}, Lcom/twitter/app/common/list/ao;->a(Lddo;Lden;Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 57
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/common/list/l;->e:Lden;

    .line 63
    iget-object v0, p0, Lcom/twitter/app/common/list/l;->e:Lden;

    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/common/list/l;->f:Lden;

    .line 64
    return-void
.end method

.method public static c()Lcom/twitter/app/common/list/n;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lcom/twitter/app/common/list/n;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/app/common/list/n;-><init>(Lcom/twitter/app/common/list/m;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/twitter/app/common/inject/v;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/twitter/app/common/list/l;->f:Lden;

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/inject/v;

    return-object v0
.end method

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
    .line 68
    invoke-static {}, Ldagger/internal/e;->a()Ldagger/internal/c;

    move-result-object v0

    invoke-interface {v0}, Ldagger/internal/c;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method
