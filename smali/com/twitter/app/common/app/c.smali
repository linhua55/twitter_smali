.class public final Lcom/twitter/app/common/app/c;
.super Lcom/twitter/app/common/app/l;
.source "Twttr"


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lddi;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/platform/PlatformContext;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/platform/u;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/config/AppConfig;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Landroid/content/ContentResolver;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/app/common/util/c;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/app/common/util/f;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/app/common/util/n;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/app/common/util/r;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Landroid/accounts/AccountManager;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/app/common/account/d;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Landroid/support/v4/content/LocalBroadcastManager;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/library/client/bk;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/library/client/bd;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lauq;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Laup;",
            ">;"
        }
    .end annotation
.end field

.field private u:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Laut;",
            ">;"
        }
    .end annotation
.end field

.field private v:Lddo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lddo",
            "<",
            "Lcom/twitter/app/common/app/InjectedApplication;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const-class v0, Lcom/twitter/app/common/app/c;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/twitter/app/common/app/c;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/twitter/app/common/app/e;)V
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/twitter/app/common/app/l;-><init>()V

    .line 129
    sget-boolean v0, Lcom/twitter/app/common/app/c;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 130
    :cond_0
    invoke-direct {p0, p1}, Lcom/twitter/app/common/app/c;->a(Lcom/twitter/app/common/app/e;)V

    .line 131
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/app/common/app/e;Lcom/twitter/app/common/app/d;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/twitter/app/common/app/c;-><init>(Lcom/twitter/app/common/app/e;)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/app/common/app/c;)Lden;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/twitter/app/common/app/c;->d:Lden;

    return-object v0
.end method

.method private a(Lcom/twitter/app/common/app/e;)V
    .locals 3

    .prologue
    .line 140
    .line 142
    invoke-static {p1}, Lcom/twitter/app/common/app/e;->a(Lcom/twitter/app/common/app/e;)Lcom/twitter/app/common/app/internal/a;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/app/common/app/internal/h;->a(Lcom/twitter/app/common/app/internal/a;)Ldagger/internal/c;

    move-result-object v0

    .line 141
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/common/app/c;->b:Lden;

    .line 144
    iget-object v0, p0, Lcom/twitter/app/common/app/c;->b:Lden;

    .line 146
    invoke-static {v0}, Lcom/twitter/app/common/app/internal/j;->a(Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 145
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/common/app/c;->c:Lden;

    .line 148
    iget-object v0, p0, Lcom/twitter/app/common/app/c;->c:Lden;

    .line 150
    invoke-static {v0}, Lcom/twitter/app/common/app/internal/m;->a(Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 149
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/common/app/c;->d:Lden;

    .line 152
    iget-object v0, p0, Lcom/twitter/app/common/app/c;->c:Lden;

    .line 154
    invoke-static {v0}, Lcom/twitter/app/common/app/internal/l;->a(Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 153
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/common/app/c;->e:Lden;

    .line 156
    iget-object v0, p0, Lcom/twitter/app/common/app/c;->e:Lden;

    .line 158
    invoke-static {v0}, Lcom/twitter/app/common/app/internal/n;->a(Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 157
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/common/app/c;->f:Lden;

    .line 162
    invoke-static {p1}, Lcom/twitter/app/common/app/e;->a(Lcom/twitter/app/common/app/e;)Lcom/twitter/app/common/app/internal/a;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/app/common/app/internal/f;->a(Lcom/twitter/app/common/app/internal/a;)Ldagger/internal/c;

    move-result-object v0

    .line 161
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/common/app/c;->g:Lden;

    .line 164
    iget-object v0, p0, Lcom/twitter/app/common/app/c;->c:Lden;

    .line 166
    invoke-static {v0}, Lcom/twitter/app/common/app/internal/i;->a(Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 165
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/common/app/c;->h:Lden;

    .line 169
    invoke-static {}, Lcom/twitter/app/common/app/internal/ApplicationModule_ProvideUiHandlerFactory;->c()Ldagger/internal/c;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/common/app/c;->i:Lden;

    .line 171
    iget-object v0, p0, Lcom/twitter/app/common/app/c;->b:Lden;

    .line 173
    invoke-static {v0}, Lcom/twitter/app/common/app/internal/d;->a(Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 172
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/common/app/c;->j:Lden;

    .line 176
    iget-object v0, p0, Lcom/twitter/app/common/app/c;->j:Lden;

    .line 178
    invoke-static {v0}, Lcom/twitter/app/common/app/internal/g;->a(Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 177
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/common/app/c;->k:Lden;

    .line 181
    iget-object v0, p0, Lcom/twitter/app/common/app/c;->j:Lden;

    .line 183
    invoke-static {v0}, Lcom/twitter/app/common/app/internal/k;->a(Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 182
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/common/app/c;->l:Lden;

    .line 187
    invoke-static {}, Lcom/twitter/app/common/app/internal/ApplicationModule_ProvideLeakedServiceTrackerFactory;->c()Ldagger/internal/c;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/common/app/c;->m:Lden;

    .line 189
    iget-object v0, p0, Lcom/twitter/app/common/app/c;->c:Lden;

    .line 191
    invoke-static {v0}, Lcom/twitter/app/common/app/internal/c;->a(Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 190
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/common/app/c;->n:Lden;

    .line 196
    invoke-static {p1}, Lcom/twitter/app/common/app/e;->a(Lcom/twitter/app/common/app/e;)Lcom/twitter/app/common/app/internal/a;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/app/common/app/c;->n:Lden;

    .line 195
    invoke-static {v0, v1}, Lcom/twitter/app/common/app/internal/e;->a(Lcom/twitter/app/common/app/internal/a;Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 194
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/common/app/c;->o:Lden;

    .line 198
    iget-object v0, p0, Lcom/twitter/app/common/app/c;->c:Lden;

    .line 200
    invoke-static {v0}, Lcom/twitter/app/common/app/internal/b;->a(Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 199
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/common/app/c;->p:Lden;

    .line 203
    invoke-static {}, Lcom/twitter/app/common/app/internal/TwitterClientModule_ProvideSessionManagerFactory;->c()Ldagger/internal/c;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/common/app/c;->q:Lden;

    .line 205
    iget-object v0, p0, Lcom/twitter/app/common/app/c;->c:Lden;

    .line 207
    invoke-static {v0}, Lcom/twitter/app/common/app/internal/y;->a(Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 206
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/common/app/c;->r:Lden;

    .line 212
    invoke-static {p1}, Lcom/twitter/app/common/app/e;->b(Lcom/twitter/app/common/app/e;)Lcom/twitter/app/common/app/internal/o;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/app/common/app/c;->c:Lden;

    iget-object v2, p0, Lcom/twitter/app/common/app/c;->f:Lden;

    .line 211
    invoke-static {v0, v1, v2}, Lcom/twitter/app/common/app/internal/r;->a(Lcom/twitter/app/common/app/internal/o;Lden;Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 210
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/common/app/c;->s:Lden;

    .line 217
    invoke-static {p1}, Lcom/twitter/app/common/app/e;->b(Lcom/twitter/app/common/app/e;)Lcom/twitter/app/common/app/internal/o;

    move-result-object v0

    .line 216
    invoke-static {v0}, Lcom/twitter/app/common/app/internal/q;->a(Lcom/twitter/app/common/app/internal/o;)Ldagger/internal/c;

    move-result-object v0

    .line 215
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/common/app/c;->t:Lden;

    .line 222
    invoke-static {p1}, Lcom/twitter/app/common/app/e;->b(Lcom/twitter/app/common/app/e;)Lcom/twitter/app/common/app/internal/o;

    move-result-object v0

    .line 221
    invoke-static {v0}, Lcom/twitter/app/common/app/internal/p;->a(Lcom/twitter/app/common/app/internal/o;)Ldagger/internal/c;

    move-result-object v0

    .line 220
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/common/app/c;->u:Lden;

    .line 224
    iget-object v0, p0, Lcom/twitter/app/common/app/c;->s:Lden;

    iget-object v1, p0, Lcom/twitter/app/common/app/c;->t:Lden;

    iget-object v2, p0, Lcom/twitter/app/common/app/c;->u:Lden;

    .line 225
    invoke-static {v0, v1, v2}, Lcom/twitter/app/common/app/i;->a(Lden;Lden;Lden;)Lddo;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/common/app/c;->v:Lddo;

    .line 229
    return-void
.end method

.method static synthetic b(Lcom/twitter/app/common/app/c;)Lden;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/twitter/app/common/app/c;->e:Lden;

    return-object v0
.end method

.method static synthetic c(Lcom/twitter/app/common/app/c;)Lden;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/twitter/app/common/app/c;->f:Lden;

    return-object v0
.end method

.method static synthetic d(Lcom/twitter/app/common/app/c;)Lden;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/twitter/app/common/app/c;->g:Lden;

    return-object v0
.end method

.method static synthetic e(Lcom/twitter/app/common/app/c;)Lden;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/twitter/app/common/app/c;->b:Lden;

    return-object v0
.end method

.method static synthetic f(Lcom/twitter/app/common/app/c;)Lden;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/twitter/app/common/app/c;->c:Lden;

    return-object v0
.end method

.method static synthetic g(Lcom/twitter/app/common/app/c;)Lden;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/twitter/app/common/app/c;->i:Lden;

    return-object v0
.end method

.method static synthetic h(Lcom/twitter/app/common/app/c;)Lden;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/twitter/app/common/app/c;->j:Lden;

    return-object v0
.end method

.method static synthetic i(Lcom/twitter/app/common/app/c;)Lden;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/twitter/app/common/app/c;->k:Lden;

    return-object v0
.end method

.method static synthetic j(Lcom/twitter/app/common/app/c;)Lden;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/twitter/app/common/app/c;->l:Lden;

    return-object v0
.end method

.method public static k()Lcom/twitter/app/common/app/e;
    .locals 2

    .prologue
    .line 134
    new-instance v0, Lcom/twitter/app/common/app/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/app/common/app/e;-><init>(Lcom/twitter/app/common/app/d;)V

    return-object v0
.end method

.method static synthetic k(Lcom/twitter/app/common/app/c;)Lden;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/twitter/app/common/app/c;->m:Lden;

    return-object v0
.end method

.method static synthetic l(Lcom/twitter/app/common/app/c;)Lden;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/twitter/app/common/app/c;->o:Lden;

    return-object v0
.end method

.method static synthetic m(Lcom/twitter/app/common/app/c;)Lden;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/twitter/app/common/app/c;->p:Lden;

    return-object v0
.end method

.method static synthetic n(Lcom/twitter/app/common/app/c;)Lden;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/twitter/app/common/app/c;->q:Lden;

    return-object v0
.end method

.method static synthetic o(Lcom/twitter/app/common/app/c;)Lden;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/twitter/app/common/app/c;->r:Lden;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/twitter/app/common/app/internal/ah;)Lcom/twitter/app/common/app/n;
    .locals 2

    .prologue
    .line 323
    new-instance v0, Lcom/twitter/app/common/app/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/twitter/app/common/app/f;-><init>(Lcom/twitter/app/common/app/c;Lcom/twitter/app/common/app/internal/ah;Lcom/twitter/app/common/app/d;)V

    return-object v0
.end method

.method public a(Lcom/twitter/app/common/app/internal/ao;)Lcom/twitter/app/common/app/o;
    .locals 2

    .prologue
    .line 318
    new-instance v0, Lcom/twitter/app/common/app/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/twitter/app/common/app/g;-><init>(Lcom/twitter/app/common/app/c;Lcom/twitter/app/common/app/internal/ao;Lcom/twitter/app/common/app/d;)V

    return-object v0
.end method

.method public a(Lcom/twitter/app/common/app/InjectedApplication;)V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/twitter/app/common/app/c;->v:Lddo;

    invoke-interface {v0, p1}, Lddo;->a(Ljava/lang/Object;)V

    .line 314
    return-void
.end method

.method public b()Landroid/app/Application;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/twitter/app/common/app/c;->b:Lden;

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    return-object v0
.end method

.method public c()Landroid/content/Context;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/twitter/app/common/app/c;->c:Lden;

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public d()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/twitter/app/common/app/c;->i:Lden;

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method

.method public e()Lcom/twitter/app/common/util/c;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/twitter/app/common/app/c;->j:Lden;

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/util/c;

    return-object v0
.end method

.method public f()Lcom/twitter/app/common/util/f;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/twitter/app/common/app/c;->k:Lden;

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/util/f;

    return-object v0
.end method

.method public g()Lcom/twitter/app/common/util/n;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/twitter/app/common/app/c;->l:Lden;

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/util/n;

    return-object v0
.end method

.method public h()Lcom/twitter/app/common/util/r;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/twitter/app/common/app/c;->m:Lden;

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/util/r;

    return-object v0
.end method

.method public i()Lcom/twitter/app/common/account/d;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/twitter/app/common/app/c;->o:Lden;

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/account/d;

    return-object v0
.end method

.method public j()Landroid/support/v4/content/LocalBroadcastManager;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/twitter/app/common/app/c;->p:Lden;

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/content/LocalBroadcastManager;

    return-object v0
.end method

.method public l()Lddi;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/twitter/app/common/app/c;->d:Lden;

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lddi;

    return-object v0
.end method

.method public m()Lcom/twitter/platform/PlatformContext;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/twitter/app/common/app/c;->e:Lden;

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/platform/PlatformContext;

    return-object v0
.end method

.method public n()Lcom/twitter/platform/u;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/twitter/app/common/app/c;->f:Lden;

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/platform/u;

    return-object v0
.end method

.method public o()Lcom/twitter/config/AppConfig;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/twitter/app/common/app/c;->g:Lden;

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/config/AppConfig;

    return-object v0
.end method

.method public p()Lcom/twitter/library/client/bk;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/twitter/app/common/app/c;->q:Lden;

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/bk;

    return-object v0
.end method

.method public q()Lcom/twitter/library/client/bd;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/twitter/app/common/app/c;->r:Lden;

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/bd;

    return-object v0
.end method
