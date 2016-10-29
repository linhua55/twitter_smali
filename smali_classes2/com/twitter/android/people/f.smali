.class public final Lcom/twitter/android/people/f;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/people/ak;


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/library/client/Session;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcgc;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/library/util/FriendshipCache;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lapb;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lapn;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lapi;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lbbq;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/database/lru/am",
            "<",
            "Ljava/lang/String;",
            "Lcom/twitter/model/people/ag;",
            ">;>;"
        }
    .end annotation
.end field

.field private k:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/android/people/a;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/android/people/ba;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lapg;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Laov;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/android/people/adapters/ag;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/android/people/s;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/android/people/z;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/android/people/x;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/app/common/di/g;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lden;
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

.field private u:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/library/scribe/TwitterScribeAssociation;",
            ">;"
        }
    .end annotation
.end field

.field private v:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/android/people/bb;",
            ">;"
        }
    .end annotation
.end field

.field private w:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/library/client/bd;",
            ">;"
        }
    .end annotation
.end field

.field private x:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/android/ys;",
            ">;"
        }
    .end annotation
.end field

.field private y:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/android/people/adapters/viewbinders/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-class v0, Lcom/twitter/android/people/f;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/twitter/android/people/f;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/twitter/android/people/k;)V
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    sget-boolean v0, Lcom/twitter/android/people/f;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 127
    :cond_0
    invoke-direct {p0, p1}, Lcom/twitter/android/people/f;->a(Lcom/twitter/android/people/k;)V

    .line 128
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/people/k;Lcom/twitter/android/people/g;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/twitter/android/people/f;-><init>(Lcom/twitter/android/people/k;)V

    return-void
.end method

.method public static a()Lcom/twitter/android/people/k;
    .locals 2

    .prologue
    .line 131
    new-instance v0, Lcom/twitter/android/people/k;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/android/people/k;-><init>(Lcom/twitter/android/people/g;)V

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/android/people/f;)Lden;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/twitter/android/people/f;->v:Lden;

    return-object v0
.end method

.method private a(Lcom/twitter/android/people/k;)V
    .locals 6

    .prologue
    .line 137
    new-instance v0, Lcom/twitter/android/people/g;

    invoke-direct {v0, p0, p1}, Lcom/twitter/android/people/g;-><init>(Lcom/twitter/android/people/f;Lcom/twitter/android/people/k;)V

    iput-object v0, p0, Lcom/twitter/android/people/f;->b:Lden;

    .line 149
    new-instance v0, Lcom/twitter/android/people/h;

    invoke-direct {v0, p0, p1}, Lcom/twitter/android/people/h;-><init>(Lcom/twitter/android/people/f;Lcom/twitter/android/people/k;)V

    iput-object v0, p0, Lcom/twitter/android/people/f;->c:Lden;

    .line 161
    iget-object v0, p0, Lcom/twitter/android/people/f;->b:Lden;

    iget-object v1, p0, Lcom/twitter/android/people/f;->c:Lden;

    .line 163
    invoke-static {v0, v1}, Lcom/twitter/android/people/ae;->a(Lden;Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 162
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/people/f;->d:Lden;

    .line 167
    invoke-static {}, Lcom/twitter/android/people/ModulesPresenterModule_ProvideFriendshipCacheFactory;->c()Ldagger/internal/c;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/people/f;->e:Lden;

    .line 172
    invoke-static {p1}, Lcom/twitter/android/people/k;->b(Lcom/twitter/android/people/k;)Lcom/twitter/android/people/ac;

    move-result-object v0

    .line 171
    invoke-static {v0}, Lcom/twitter/android/people/ad;->a(Lcom/twitter/android/people/ac;)Ldagger/internal/c;

    move-result-object v0

    .line 170
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/people/f;->f:Lden;

    .line 174
    iget-object v0, p0, Lcom/twitter/android/people/f;->b:Lden;

    iget-object v1, p0, Lcom/twitter/android/people/f;->c:Lden;

    .line 176
    invoke-static {v0, v1}, Lcom/twitter/android/people/ai;->a(Lden;Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 175
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/people/f;->g:Lden;

    .line 179
    iget-object v0, p0, Lcom/twitter/android/people/f;->b:Lden;

    iget-object v1, p0, Lcom/twitter/android/people/f;->c:Lden;

    .line 181
    invoke-static {v0, v1}, Lcom/twitter/android/people/ag;->a(Lden;Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 180
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/people/f;->h:Lden;

    .line 184
    new-instance v0, Lcom/twitter/android/people/i;

    invoke-direct {v0, p0, p1}, Lcom/twitter/android/people/i;-><init>(Lcom/twitter/android/people/f;Lcom/twitter/android/people/k;)V

    iput-object v0, p0, Lcom/twitter/android/people/f;->i:Lden;

    .line 196
    iget-object v0, p0, Lcom/twitter/android/people/f;->i:Lden;

    .line 198
    invoke-static {v0}, Lcom/twitter/android/people/r;->a(Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 197
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/people/f;->j:Lden;

    .line 201
    invoke-static {}, Lcom/twitter/android/people/ConnectLayoutManager_Factory;->c()Ldagger/internal/c;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/people/f;->k:Lden;

    .line 203
    iget-object v0, p0, Lcom/twitter/android/people/f;->k:Lden;

    .line 204
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/people/f;->l:Lden;

    .line 209
    invoke-static {}, Ldagger/internal/MembersInjectors;->a()Lddo;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/people/f;->b:Lden;

    iget-object v2, p0, Lcom/twitter/android/people/f;->c:Lden;

    iget-object v3, p0, Lcom/twitter/android/people/f;->j:Lden;

    iget-object v4, p0, Lcom/twitter/android/people/f;->l:Lden;

    .line 208
    invoke-static {v0, v1, v2, v3, v4}, Laph;->a(Lddo;Lden;Lden;Lden;Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 207
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/people/f;->m:Lden;

    .line 215
    iget-object v0, p0, Lcom/twitter/android/people/f;->e:Lden;

    iget-object v1, p0, Lcom/twitter/android/people/f;->f:Lden;

    iget-object v2, p0, Lcom/twitter/android/people/f;->g:Lden;

    iget-object v3, p0, Lcom/twitter/android/people/f;->h:Lden;

    iget-object v4, p0, Lcom/twitter/android/people/f;->m:Lden;

    iget-object v5, p0, Lcom/twitter/android/people/f;->j:Lden;

    .line 217
    invoke-static/range {v0 .. v5}, Lapd;->a(Lden;Lden;Lden;Lden;Lden;Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 216
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/people/f;->n:Lden;

    .line 225
    iget-object v0, p0, Lcom/twitter/android/people/f;->l:Lden;

    .line 226
    invoke-static {v0}, Lcom/twitter/android/people/adapters/aq;->a(Lden;)Ldagger/internal/c;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/people/f;->o:Lden;

    .line 228
    iget-object v0, p0, Lcom/twitter/android/people/f;->d:Lden;

    iget-object v1, p0, Lcom/twitter/android/people/f;->n:Lden;

    iget-object v2, p0, Lcom/twitter/android/people/f;->o:Lden;

    .line 230
    invoke-static {v0, v1, v2}, Lcom/twitter/android/people/w;->a(Lden;Lden;Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 229
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/people/f;->p:Lden;

    .line 235
    iget-object v0, p0, Lcom/twitter/android/people/f;->d:Lden;

    iget-object v1, p0, Lcom/twitter/android/people/f;->p:Lden;

    iget-object v2, p0, Lcom/twitter/android/people/f;->e:Lden;

    .line 237
    invoke-static {v0, v1, v2}, Lcom/twitter/android/people/ab;->a(Lden;Lden;Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 236
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/people/f;->q:Lden;

    .line 242
    iget-object v0, p0, Lcom/twitter/android/people/f;->q:Lden;

    .line 243
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/people/f;->r:Lden;

    .line 245
    iget-object v0, p0, Lcom/twitter/android/people/f;->r:Lden;

    .line 246
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/people/f;->s:Lden;

    .line 248
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 249
    invoke-static {v0, v1}, Ldagger/internal/e;->a(II)Ldagger/internal/g;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/people/f;->s:Lden;

    .line 250
    invoke-virtual {v0, v1}, Ldagger/internal/g;->a(Lden;)Ldagger/internal/g;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Ldagger/internal/g;->a()Ldagger/internal/e;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/people/f;->t:Lden;

    .line 256
    invoke-static {p1}, Lcom/twitter/android/people/k;->b(Lcom/twitter/android/people/k;)Lcom/twitter/android/people/ac;

    move-result-object v0

    .line 255
    invoke-static {v0}, Lcom/twitter/android/people/ah;->a(Lcom/twitter/android/people/ac;)Ldagger/internal/c;

    move-result-object v0

    .line 254
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/people/f;->u:Lden;

    .line 258
    iget-object v0, p0, Lcom/twitter/android/people/f;->c:Lden;

    iget-object v1, p0, Lcom/twitter/android/people/f;->u:Lden;

    .line 260
    invoke-static {v0, v1}, Lcom/twitter/android/people/af;->a(Lden;Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 259
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/people/f;->v:Lden;

    .line 263
    new-instance v0, Lcom/twitter/android/people/j;

    invoke-direct {v0, p0, p1}, Lcom/twitter/android/people/j;-><init>(Lcom/twitter/android/people/f;Lcom/twitter/android/people/k;)V

    iput-object v0, p0, Lcom/twitter/android/people/f;->w:Lden;

    .line 275
    iget-object v0, p0, Lcom/twitter/android/people/f;->u:Lden;

    iget-object v1, p0, Lcom/twitter/android/people/f;->e:Lden;

    iget-object v2, p0, Lcom/twitter/android/people/f;->c:Lden;

    iget-object v3, p0, Lcom/twitter/android/people/f;->w:Lden;

    .line 277
    invoke-static {v0, v1, v2, v3}, Lcom/twitter/android/people/aj;->a(Lden;Lden;Lden;Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 276
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/people/f;->x:Lden;

    .line 283
    iget-object v0, p0, Lcom/twitter/android/people/f;->q:Lden;

    .line 284
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/people/f;->y:Lden;

    .line 285
    return-void
.end method

.method static synthetic b(Lcom/twitter/android/people/f;)Lden;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/twitter/android/people/f;->b:Lden;

    return-object v0
.end method

.method static synthetic c(Lcom/twitter/android/people/f;)Lden;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/twitter/android/people/f;->e:Lden;

    return-object v0
.end method

.method static synthetic d(Lcom/twitter/android/people/f;)Lden;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/twitter/android/people/f;->x:Lden;

    return-object v0
.end method

.method static synthetic e(Lcom/twitter/android/people/f;)Lden;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/twitter/android/people/f;->y:Lden;

    return-object v0
.end method

.method static synthetic f(Lcom/twitter/android/people/f;)Lden;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/twitter/android/people/f;->r:Lden;

    return-object v0
.end method

.method static synthetic g(Lcom/twitter/android/people/f;)Lden;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/twitter/android/people/f;->t:Lden;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/twitter/android/people/as;)Lcom/twitter/android/people/al;
    .locals 2

    .prologue
    .line 299
    new-instance v0, Lcom/twitter/android/people/l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/twitter/android/people/l;-><init>(Lcom/twitter/android/people/f;Lcom/twitter/android/people/as;Lcom/twitter/android/people/g;)V

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
    .line 289
    iget-object v0, p0, Lcom/twitter/android/people/f;->t:Lden;

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public c()Lcom/twitter/android/people/x;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/twitter/android/people/f;->r:Lden;

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/people/x;

    return-object v0
.end method
