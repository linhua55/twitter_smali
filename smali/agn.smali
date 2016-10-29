.class public final Lagn;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lagx;


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
            "Lcom/twitter/library/api/moments/maker/e",
            "<",
            "Lcom/twitter/library/api/moments/maker/b;",
            "Lcom/twitter/model/moments/maker/ar;",
            "Lcom/twitter/model/core/cj;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/library/api/moments/maker/e",
            "<",
            "Lcom/twitter/library/api/moments/maker/g;",
            "Lcom/twitter/model/moments/maker/ar;",
            "Lcom/twitter/model/core/cj;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/library/api/moments/maker/e",
            "<",
            "Lcom/twitter/library/api/moments/maker/h;",
            "Lcom/twitter/model/moments/maker/ar;",
            "Lcom/twitter/model/core/cj;",
            ">;>;"
        }
    .end annotation
.end field

.field private g:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/library/api/moments/maker/e",
            "<",
            "Lcom/twitter/library/api/moments/maker/t;",
            "Lcom/twitter/model/moments/maker/ar;",
            "Lcom/twitter/model/core/cj;",
            ">;>;"
        }
    .end annotation
.end field

.field private h:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/library/api/upload/i;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/library/api/upload/w;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/library/api/upload/s;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/library/api/moments/maker/o;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/library/provider/dm;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/app/common/account/UserIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcet;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lbbq;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/database/lru/am",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/moments/maker/y;",
            ">;>;"
        }
    .end annotation
.end field

.field private q:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/library/api/moments/maker/i;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Landroid/support/v4/content/LocalBroadcastManager;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Ldci;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcup;",
            ">;"
        }
    .end annotation
.end field

.field private u:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/library/api/moments/maker/m;",
            ">;"
        }
    .end annotation
.end field

.field private v:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/android/moments/data/maker/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lagn;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lagn;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lagu;)V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    sget-boolean v0, Lagn;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 111
    :cond_0
    invoke-direct {p0, p1}, Lagn;->a(Lagu;)V

    .line 112
    return-void
.end method

.method synthetic constructor <init>(Lagu;Lago;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lagn;-><init>(Lagu;)V

    return-void
.end method

.method public static a()Lagu;
    .locals 2

    .prologue
    .line 115
    new-instance v0, Lagu;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lagu;-><init>(Lago;)V

    return-object v0
.end method

.method private a(Lagu;)V
    .locals 5

    .prologue
    .line 121
    new-instance v0, Lago;

    invoke-direct {v0, p0, p1}, Lago;-><init>(Lagn;Lagu;)V

    iput-object v0, p0, Lagn;->b:Lden;

    .line 133
    new-instance v0, Lagp;

    invoke-direct {v0, p0, p1}, Lagp;-><init>(Lagn;Lagu;)V

    iput-object v0, p0, Lagn;->c:Lden;

    .line 150
    invoke-static {}, Ldagger/internal/MembersInjectors;->a()Lddo;

    move-result-object v0

    iget-object v1, p0, Lagn;->b:Lden;

    iget-object v2, p0, Lagn;->c:Lden;

    .line 146
    invoke-static {v0, v1, v2}, Lcom/twitter/library/api/moments/maker/f;->a(Lddo;Lden;Lden;)Ldagger/internal/c;

    move-result-object v0

    iput-object v0, p0, Lagn;->d:Lden;

    .line 159
    invoke-static {}, Ldagger/internal/MembersInjectors;->a()Lddo;

    move-result-object v0

    iget-object v1, p0, Lagn;->b:Lden;

    iget-object v2, p0, Lagn;->c:Lden;

    .line 155
    invoke-static {v0, v1, v2}, Lcom/twitter/library/api/moments/maker/f;->a(Lddo;Lden;Lden;)Ldagger/internal/c;

    move-result-object v0

    iput-object v0, p0, Lagn;->e:Lden;

    .line 168
    invoke-static {}, Ldagger/internal/MembersInjectors;->a()Lddo;

    move-result-object v0

    iget-object v1, p0, Lagn;->b:Lden;

    iget-object v2, p0, Lagn;->c:Lden;

    .line 164
    invoke-static {v0, v1, v2}, Lcom/twitter/library/api/moments/maker/f;->a(Lddo;Lden;Lden;)Ldagger/internal/c;

    move-result-object v0

    iput-object v0, p0, Lagn;->f:Lden;

    .line 177
    invoke-static {}, Ldagger/internal/MembersInjectors;->a()Lddo;

    move-result-object v0

    iget-object v1, p0, Lagn;->b:Lden;

    iget-object v2, p0, Lagn;->c:Lden;

    .line 173
    invoke-static {v0, v1, v2}, Lcom/twitter/library/api/moments/maker/f;->a(Lddo;Lden;Lden;)Ldagger/internal/c;

    move-result-object v0

    iput-object v0, p0, Lagn;->g:Lden;

    .line 181
    iget-object v0, p0, Lagn;->b:Lden;

    iget-object v1, p0, Lagn;->c:Lden;

    .line 182
    invoke-static {v0, v1}, Lcom/twitter/library/api/upload/m;->a(Lden;Lden;)Ldagger/internal/c;

    move-result-object v0

    iput-object v0, p0, Lagn;->h:Lden;

    .line 184
    iget-object v0, p0, Lagn;->b:Lden;

    .line 185
    invoke-static {v0}, Lcom/twitter/library/api/upload/ad;->a(Lden;)Ldagger/internal/c;

    move-result-object v0

    iput-object v0, p0, Lagn;->i:Lden;

    .line 187
    iget-object v0, p0, Lagn;->h:Lden;

    iget-object v1, p0, Lagn;->i:Lden;

    .line 188
    invoke-static {v0, v1}, Lcom/twitter/library/api/upload/ac;->a(Lden;Lden;)Ldagger/internal/c;

    move-result-object v0

    iput-object v0, p0, Lagn;->j:Lden;

    .line 190
    iget-object v0, p0, Lagn;->d:Lden;

    iget-object v1, p0, Lagn;->e:Lden;

    iget-object v2, p0, Lagn;->f:Lden;

    iget-object v3, p0, Lagn;->g:Lden;

    iget-object v4, p0, Lagn;->j:Lden;

    .line 191
    invoke-static {v0, v1, v2, v3, v4}, Lcom/twitter/library/api/moments/maker/q;->a(Lden;Lden;Lden;Lden;Lden;)Ldagger/internal/c;

    move-result-object v0

    iput-object v0, p0, Lagn;->k:Lden;

    .line 198
    new-instance v0, Lagq;

    invoke-direct {v0, p0, p1}, Lagq;-><init>(Lagn;Lagu;)V

    iput-object v0, p0, Lagn;->l:Lden;

    .line 210
    new-instance v0, Lagr;

    invoke-direct {v0, p0, p1}, Lagr;-><init>(Lagn;Lagu;)V

    iput-object v0, p0, Lagn;->m:Lden;

    .line 224
    invoke-static {p1}, Lagu;->b(Lagu;)Lagy;

    move-result-object v0

    iget-object v1, p0, Lagn;->b:Lden;

    iget-object v2, p0, Lagn;->l:Lden;

    iget-object v3, p0, Lagn;->m:Lden;

    .line 223
    invoke-static {v0, v1, v2, v3}, Lagz;->a(Lagy;Lden;Lden;Lden;)Ldagger/internal/c;

    move-result-object v0

    iput-object v0, p0, Lagn;->n:Lden;

    .line 229
    new-instance v0, Lags;

    invoke-direct {v0, p0, p1}, Lags;-><init>(Lagn;Lagu;)V

    iput-object v0, p0, Lagn;->o:Lden;

    .line 241
    iget-object v0, p0, Lagn;->o:Lden;

    .line 243
    invoke-static {v0}, Laft;->a(Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 242
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lagn;->p:Lden;

    .line 246
    iget-object v0, p0, Lagn;->p:Lden;

    .line 247
    invoke-static {v0}, Lcom/twitter/library/api/moments/maker/l;->a(Lden;)Ldagger/internal/c;

    move-result-object v0

    iput-object v0, p0, Lagn;->q:Lden;

    .line 250
    new-instance v0, Lagt;

    invoke-direct {v0, p0, p1}, Lagt;-><init>(Lagn;Lagu;)V

    iput-object v0, p0, Lagn;->r:Lden;

    .line 262
    iget-object v0, p0, Lagn;->r:Lden;

    .line 263
    invoke-static {v0}, Ldcm;->a(Lden;)Ldagger/internal/c;

    move-result-object v0

    iput-object v0, p0, Lagn;->s:Lden;

    .line 265
    iget-object v0, p0, Lagn;->s:Lden;

    .line 266
    invoke-static {v0}, Lcur;->a(Lden;)Ldagger/internal/c;

    move-result-object v0

    iput-object v0, p0, Lagn;->t:Lden;

    .line 268
    iget-object v0, p0, Lagn;->k:Lden;

    iget-object v1, p0, Lagn;->n:Lden;

    iget-object v2, p0, Lagn;->q:Lden;

    iget-object v3, p0, Lagn;->t:Lden;

    .line 269
    invoke-static {v0, v1, v2, v3}, Lcom/twitter/library/api/moments/maker/n;->a(Lden;Lden;Lden;Lden;)Ldagger/internal/c;

    move-result-object v0

    iput-object v0, p0, Lagn;->u:Lden;

    .line 275
    iget-object v0, p0, Lagn;->u:Lden;

    .line 276
    invoke-static {v0}, Lcom/twitter/android/moments/data/maker/p;->a(Lden;)Ldagger/internal/c;

    move-result-object v0

    iput-object v0, p0, Lagn;->v:Lden;

    .line 277
    return-void
.end method


# virtual methods
.method public b()Lcom/twitter/android/moments/data/maker/o;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lagn;->v:Lden;

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/data/maker/o;

    return-object v0
.end method
