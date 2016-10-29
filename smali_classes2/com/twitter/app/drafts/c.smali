.class public final Lcom/twitter/app/drafts/c;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/app/drafts/o;


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/database/schema/DraftsSchema;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lazt",
            "<",
            "Lcom/twitter/database/model/g;",
            "Lcmf",
            "<",
            "Lcom/twitter/model/drafts/d;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private d:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lavt;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/app/drafts/n;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/library/client/bk;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/app/drafts/p;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/app/drafts/m;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/app/common/di/g;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lden;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/twitter/app/drafts/c;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/twitter/app/drafts/c;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/twitter/app/drafts/f;)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    sget-boolean v0, Lcom/twitter/app/drafts/c;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 65
    :cond_0
    invoke-direct {p0, p1}, Lcom/twitter/app/drafts/c;->a(Lcom/twitter/app/drafts/f;)V

    .line 66
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/app/drafts/f;Lcom/twitter/app/drafts/d;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/twitter/app/drafts/c;-><init>(Lcom/twitter/app/drafts/f;)V

    return-void
.end method

.method public static a()Lcom/twitter/app/drafts/f;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Lcom/twitter/app/drafts/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/app/drafts/f;-><init>(Lcom/twitter/app/drafts/d;)V

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/app/drafts/c;)Lden;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/twitter/app/drafts/c;->h:Lden;

    return-object v0
.end method

.method private a(Lcom/twitter/app/drafts/f;)V
    .locals 3

    .prologue
    .line 75
    new-instance v0, Lcom/twitter/app/drafts/d;

    invoke-direct {v0, p0, p1}, Lcom/twitter/app/drafts/d;-><init>(Lcom/twitter/app/drafts/c;Lcom/twitter/app/drafts/f;)V

    iput-object v0, p0, Lcom/twitter/app/drafts/c;->b:Lden;

    .line 87
    iget-object v0, p0, Lcom/twitter/app/drafts/c;->b:Lden;

    .line 89
    invoke-static {v0}, Lavw;->a(Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 88
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/drafts/c;->c:Lden;

    .line 91
    iget-object v0, p0, Lcom/twitter/app/drafts/c;->c:Lden;

    .line 92
    invoke-static {v0}, Lavu;->a(Lden;)Ldagger/internal/c;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/drafts/c;->d:Lden;

    .line 94
    iget-object v0, p0, Lcom/twitter/app/drafts/c;->d:Lden;

    .line 95
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/drafts/c;->e:Lden;

    .line 97
    new-instance v0, Lcom/twitter/app/drafts/e;

    invoke-direct {v0, p0, p1}, Lcom/twitter/app/drafts/e;-><init>(Lcom/twitter/app/drafts/c;Lcom/twitter/app/drafts/f;)V

    iput-object v0, p0, Lcom/twitter/app/drafts/c;->f:Lden;

    .line 109
    iget-object v0, p0, Lcom/twitter/app/drafts/c;->f:Lden;

    .line 110
    invoke-static {v0}, Lcom/twitter/app/drafts/q;->a(Lden;)Ldagger/internal/c;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/drafts/c;->g:Lden;

    .line 115
    invoke-static {p1}, Lcom/twitter/app/drafts/f;->b(Lcom/twitter/app/drafts/f;)Lavv;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/app/drafts/c;->e:Lden;

    iget-object v2, p0, Lcom/twitter/app/drafts/c;->g:Lden;

    .line 114
    invoke-static {v0, v1, v2}, Lavx;->a(Lavv;Lden;Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 113
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/drafts/c;->h:Lden;

    .line 119
    iget-object v0, p0, Lcom/twitter/app/drafts/c;->h:Lden;

    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/drafts/c;->i:Lden;

    .line 121
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 122
    invoke-static {v0, v1}, Ldagger/internal/e;->a(II)Ldagger/internal/g;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/app/drafts/c;->i:Lden;

    .line 123
    invoke-virtual {v0, v1}, Ldagger/internal/g;->a(Lden;)Ldagger/internal/g;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Ldagger/internal/g;->a()Ldagger/internal/e;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/drafts/c;->j:Lden;

    .line 125
    return-void
.end method

.method static synthetic b(Lcom/twitter/app/drafts/c;)Lden;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/twitter/app/drafts/c;->g:Lden;

    return-object v0
.end method

.method static synthetic c(Lcom/twitter/app/drafts/c;)Lden;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/twitter/app/drafts/c;->i:Lden;

    return-object v0
.end method


# virtual methods
.method public a(Lavy;)Lcom/twitter/app/drafts/r;
    .locals 2

    .prologue
    .line 134
    new-instance v0, Lcom/twitter/app/drafts/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/twitter/app/drafts/g;-><init>(Lcom/twitter/app/drafts/c;Lavy;Lcom/twitter/app/drafts/d;)V

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
    .line 129
    iget-object v0, p0, Lcom/twitter/app/drafts/c;->j:Lden;

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method
