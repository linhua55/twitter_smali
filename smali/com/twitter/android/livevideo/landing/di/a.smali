.class public final Lcom/twitter/android/livevideo/landing/di/a;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/livevideo/landing/di/k;


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
            "Lcom/twitter/app/common/base/BaseFragmentActivity;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/app/common/inject/t;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/app/common/base/n;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/library/client/Session;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/android/media/selection/MediaAttachmentController;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Laby;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/android/livevideo/landing/a;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/library/scribe/TwitterScribeItem;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/app/common/list/w;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/android/livevideo/player/m;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/library/scribe/TwitterScribeAssociation;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/android/livevideo/landing/c;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/app/common/inject/v;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Labu;",
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
            "Lauf",
            "<",
            "Lcom/twitter/android/composer/ax;",
            ">;>;"
        }
    .end annotation
.end field

.field private t:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/model/timeline/cx;",
            ">;"
        }
    .end annotation
.end field

.field private u:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Labs;",
            ">;"
        }
    .end annotation
.end field

.field private v:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Labr;",
            ">;"
        }
    .end annotation
.end field

.field private w:Lddo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lddo",
            "<",
            "Lcom/twitter/android/livevideo/landing/LiveVideoLandingActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/twitter/android/livevideo/landing/di/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/twitter/android/livevideo/landing/di/a;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/twitter/android/livevideo/landing/di/e;)V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    sget-boolean v0, Lcom/twitter/android/livevideo/landing/di/a;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 96
    :cond_0
    invoke-direct {p0, p1}, Lcom/twitter/android/livevideo/landing/di/a;->a(Lcom/twitter/android/livevideo/landing/di/e;)V

    .line 97
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/livevideo/landing/di/e;Lcom/twitter/android/livevideo/landing/di/b;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/twitter/android/livevideo/landing/di/a;-><init>(Lcom/twitter/android/livevideo/landing/di/e;)V

    return-void
.end method

.method private a(Lcom/twitter/android/livevideo/landing/di/e;)V
    .locals 10

    .prologue
    .line 106
    .line 108
    invoke-static {p1}, Lcom/twitter/android/livevideo/landing/di/e;->a(Lcom/twitter/android/livevideo/landing/di/e;)Lcom/twitter/android/livevideo/landing/di/l;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/app/common/inject/g;->a(Lcom/twitter/app/common/inject/f;)Ldagger/internal/c;

    move-result-object v0

    .line 107
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/livevideo/landing/di/a;->b:Lden;

    .line 110
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/di/a;->b:Lden;

    .line 112
    invoke-static {v0}, Lcom/twitter/app/common/inject/h;->a(Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 111
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/livevideo/landing/di/a;->c:Lden;

    .line 116
    invoke-static {p1}, Lcom/twitter/android/livevideo/landing/di/e;->a(Lcom/twitter/android/livevideo/landing/di/e;)Lcom/twitter/android/livevideo/landing/di/l;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/app/common/inject/k;->a(Lcom/twitter/app/common/inject/f;)Ldagger/internal/c;

    move-result-object v0

    .line 115
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/livevideo/landing/di/a;->d:Lden;

    .line 121
    invoke-static {p1}, Lcom/twitter/android/livevideo/landing/di/e;->a(Lcom/twitter/android/livevideo/landing/di/e;)Lcom/twitter/android/livevideo/landing/di/l;

    move-result-object v0

    .line 120
    invoke-static {v0}, Lcom/twitter/android/livevideo/landing/di/q;->a(Lcom/twitter/android/livevideo/landing/di/l;)Ldagger/internal/c;

    move-result-object v0

    .line 119
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/livevideo/landing/di/a;->e:Lden;

    .line 123
    new-instance v0, Lcom/twitter/android/livevideo/landing/di/b;

    invoke-direct {v0, p0, p1}, Lcom/twitter/android/livevideo/landing/di/b;-><init>(Lcom/twitter/android/livevideo/landing/di/a;Lcom/twitter/android/livevideo/landing/di/e;)V

    iput-object v0, p0, Lcom/twitter/android/livevideo/landing/di/a;->f:Lden;

    .line 138
    invoke-static {p1}, Lcom/twitter/android/livevideo/landing/di/e;->a(Lcom/twitter/android/livevideo/landing/di/e;)Lcom/twitter/android/livevideo/landing/di/l;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/livevideo/landing/di/a;->f:Lden;

    .line 137
    invoke-static {v0, v1}, Lcom/twitter/android/livevideo/landing/di/p;->a(Lcom/twitter/android/livevideo/landing/di/l;Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 136
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/livevideo/landing/di/a;->g:Lden;

    .line 143
    invoke-static {p1}, Lcom/twitter/android/livevideo/landing/di/e;->a(Lcom/twitter/android/livevideo/landing/di/e;)Lcom/twitter/android/livevideo/landing/di/l;

    move-result-object v0

    .line 142
    invoke-static {v0}, Lcom/twitter/android/livevideo/landing/di/m;->a(Lcom/twitter/android/livevideo/landing/di/l;)Ldagger/internal/c;

    move-result-object v0

    .line 141
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/livevideo/landing/di/a;->h:Lden;

    .line 148
    invoke-static {p1}, Lcom/twitter/android/livevideo/landing/di/e;->a(Lcom/twitter/android/livevideo/landing/di/e;)Lcom/twitter/android/livevideo/landing/di/l;

    move-result-object v0

    .line 147
    invoke-static {v0}, Lcom/twitter/android/livevideo/landing/di/o;->a(Lcom/twitter/android/livevideo/landing/di/l;)Ldagger/internal/c;

    move-result-object v0

    .line 146
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/livevideo/landing/di/a;->i:Lden;

    .line 153
    invoke-static {p1}, Lcom/twitter/android/livevideo/landing/di/e;->a(Lcom/twitter/android/livevideo/landing/di/e;)Lcom/twitter/android/livevideo/landing/di/l;

    move-result-object v0

    .line 152
    invoke-static {v0}, Lcom/twitter/android/livevideo/landing/di/u;->a(Lcom/twitter/android/livevideo/landing/di/l;)Ldagger/internal/c;

    move-result-object v0

    .line 151
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/livevideo/landing/di/a;->j:Lden;

    .line 158
    invoke-static {p1}, Lcom/twitter/android/livevideo/landing/di/e;->a(Lcom/twitter/android/livevideo/landing/di/e;)Lcom/twitter/android/livevideo/landing/di/l;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/livevideo/landing/di/a;->i:Lden;

    iget-object v2, p0, Lcom/twitter/android/livevideo/landing/di/a;->j:Lden;

    .line 157
    invoke-static {v0, v1, v2}, Lcom/twitter/android/livevideo/landing/di/r;->a(Lcom/twitter/android/livevideo/landing/di/l;Lden;Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 156
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/livevideo/landing/di/a;->k:Lden;

    .line 164
    invoke-static {}, Ldagger/internal/MembersInjectors;->a()Lddo;

    move-result-object v0

    .line 163
    invoke-static {v0}, Lcom/twitter/android/livevideo/player/n;->a(Lddo;)Ldagger/internal/c;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/livevideo/landing/di/a;->l:Lden;

    .line 168
    invoke-static {}, Lcom/twitter/android/livevideo/landing/di/LiveVideoLandingModule_ProvideTwitterScribeAssociationFactory;->c()Ldagger/internal/c;

    move-result-object v0

    .line 167
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/livevideo/landing/di/a;->m:Lden;

    .line 173
    invoke-static {}, Ldagger/internal/MembersInjectors;->a()Lddo;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/livevideo/landing/di/a;->c:Lden;

    iget-object v2, p0, Lcom/twitter/android/livevideo/landing/di/a;->d:Lden;

    iget-object v3, p0, Lcom/twitter/android/livevideo/landing/di/a;->e:Lden;

    iget-object v4, p0, Lcom/twitter/android/livevideo/landing/di/a;->g:Lden;

    iget-object v5, p0, Lcom/twitter/android/livevideo/landing/di/a;->h:Lden;

    iget-object v6, p0, Lcom/twitter/android/livevideo/landing/di/a;->k:Lden;

    iget-object v7, p0, Lcom/twitter/android/livevideo/landing/di/a;->l:Lden;

    iget-object v8, p0, Lcom/twitter/android/livevideo/landing/di/a;->m:Lden;

    iget-object v9, p0, Lcom/twitter/android/livevideo/landing/di/a;->i:Lden;

    .line 172
    invoke-static/range {v0 .. v9}, Lcom/twitter/android/livevideo/landing/m;->a(Lddo;Lden;Lden;Lden;Lden;Lden;Lden;Lden;Lden;Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 171
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/livevideo/landing/di/a;->n:Lden;

    .line 184
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/di/a;->n:Lden;

    .line 185
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/livevideo/landing/di/a;->o:Lden;

    .line 187
    new-instance v0, Lcom/twitter/android/livevideo/landing/di/c;

    invoke-direct {v0, p0, p1}, Lcom/twitter/android/livevideo/landing/di/c;-><init>(Lcom/twitter/android/livevideo/landing/di/a;Lcom/twitter/android/livevideo/landing/di/e;)V

    iput-object v0, p0, Lcom/twitter/android/livevideo/landing/di/a;->p:Lden;

    .line 199
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/di/a;->n:Lden;

    .line 201
    invoke-static {v0}, Lcom/twitter/android/livevideo/landing/di/n;->a(Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 200
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/livevideo/landing/di/a;->q:Lden;

    .line 204
    new-instance v0, Lcom/twitter/android/livevideo/landing/di/d;

    invoke-direct {v0, p0, p1}, Lcom/twitter/android/livevideo/landing/di/d;-><init>(Lcom/twitter/android/livevideo/landing/di/a;Lcom/twitter/android/livevideo/landing/di/e;)V

    iput-object v0, p0, Lcom/twitter/android/livevideo/landing/di/a;->r:Lden;

    .line 219
    invoke-static {p1}, Lcom/twitter/android/livevideo/landing/di/e;->a(Lcom/twitter/android/livevideo/landing/di/e;)Lcom/twitter/android/livevideo/landing/di/l;

    move-result-object v0

    .line 218
    invoke-static {v0}, Lcom/twitter/android/livevideo/landing/di/s;->a(Lcom/twitter/android/livevideo/landing/di/l;)Ldagger/internal/c;

    move-result-object v0

    .line 217
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/livevideo/landing/di/a;->s:Lden;

    .line 221
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/di/a;->i:Lden;

    .line 223
    invoke-static {v0}, Lcom/twitter/android/livevideo/landing/di/t;->a(Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 222
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/livevideo/landing/di/a;->t:Lden;

    .line 226
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/di/a;->p:Lden;

    iget-object v1, p0, Lcom/twitter/android/livevideo/landing/di/a;->q:Lden;

    iget-object v2, p0, Lcom/twitter/android/livevideo/landing/di/a;->g:Lden;

    iget-object v3, p0, Lcom/twitter/android/livevideo/landing/di/a;->f:Lden;

    iget-object v4, p0, Lcom/twitter/android/livevideo/landing/di/a;->r:Lden;

    iget-object v5, p0, Lcom/twitter/android/livevideo/landing/di/a;->s:Lden;

    iget-object v6, p0, Lcom/twitter/android/livevideo/landing/di/a;->t:Lden;

    iget-object v7, p0, Lcom/twitter/android/livevideo/landing/di/a;->j:Lden;

    .line 227
    invoke-static/range {v0 .. v7}, Labt;->a(Lden;Lden;Lden;Lden;Lden;Lden;Lden;Lden;)Ldagger/internal/c;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/livevideo/landing/di/a;->u:Lden;

    .line 237
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/di/a;->u:Lden;

    .line 238
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/livevideo/landing/di/a;->v:Lden;

    .line 240
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/di/a;->n:Lden;

    iget-object v1, p0, Lcom/twitter/android/livevideo/landing/di/a;->v:Lden;

    iget-object v2, p0, Lcom/twitter/android/livevideo/landing/di/a;->g:Lden;

    iget-object v3, p0, Lcom/twitter/android/livevideo/landing/di/a;->i:Lden;

    iget-object v4, p0, Lcom/twitter/android/livevideo/landing/di/a;->j:Lden;

    .line 241
    invoke-static {v0, v1, v2, v3, v4}, Lcom/twitter/android/livevideo/landing/b;->a(Lden;Lden;Lden;Lden;Lden;)Lddo;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/livevideo/landing/di/a;->w:Lddo;

    .line 247
    return-void
.end method

.method public static c()Lcom/twitter/android/livevideo/landing/di/e;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Lcom/twitter/android/livevideo/landing/di/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/android/livevideo/landing/di/e;-><init>(Lcom/twitter/android/livevideo/landing/di/b;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/twitter/app/common/inject/v;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/di/a;->o:Lden;

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/inject/v;

    return-object v0
.end method

.method public a(Lcom/twitter/android/livevideo/landing/LiveVideoLandingActivity;)V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/di/a;->w:Lddo;

    invoke-interface {v0, p1}, Lddo;->a(Ljava/lang/Object;)V

    .line 262
    return-void
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
    .line 251
    invoke-static {}, Ldagger/internal/e;->a()Ldagger/internal/c;

    move-result-object v0

    invoke-interface {v0}, Ldagger/internal/c;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method
