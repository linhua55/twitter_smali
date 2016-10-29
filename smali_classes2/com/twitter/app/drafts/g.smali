.class final Lcom/twitter/app/drafts/g;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/app/drafts/r;


# instance fields
.field final synthetic a:Lcom/twitter/app/drafts/c;

.field private final b:Lavy;

.field private c:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Landroid/view/LayoutInflater;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/app/drafts/x;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/app/common/base/BaseFragmentActivity;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lden;
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

.field private h:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lauv;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Laux;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/app/drafts/s;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/app/common/di/g;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lden;
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

.field private m:Lden;
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
.method private constructor <init>(Lcom/twitter/app/drafts/c;Lavy;)V
    .locals 1

    .prologue
    .line 192
    iput-object p1, p0, Lcom/twitter/app/drafts/g;->a:Lcom/twitter/app/drafts/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    invoke-static {p2}, Ldagger/internal/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lavy;

    iput-object v0, p0, Lcom/twitter/app/drafts/g;->b:Lavy;

    .line 194
    invoke-direct {p0}, Lcom/twitter/app/drafts/g;->c()V

    .line 195
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/app/drafts/c;Lavy;Lcom/twitter/app/drafts/d;)V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0, p1, p2}, Lcom/twitter/app/drafts/g;-><init>(Lcom/twitter/app/drafts/c;Lavy;)V

    return-void
.end method

.method private c()V
    .locals 7

    .prologue
    .line 200
    iget-object v0, p0, Lcom/twitter/app/drafts/g;->b:Lavy;

    .line 201
    invoke-static {v0}, Lcom/twitter/app/common/inject/g;->a(Lcom/twitter/app/common/inject/f;)Ldagger/internal/c;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/drafts/g;->c:Lden;

    .line 203
    iget-object v0, p0, Lcom/twitter/app/drafts/g;->c:Lden;

    .line 205
    invoke-static {v0}, Lcom/twitter/app/common/inject/i;->a(Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 204
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/drafts/g;->d:Lden;

    .line 207
    iget-object v0, p0, Lcom/twitter/app/drafts/g;->b:Lavy;

    .line 208
    invoke-static {v0}, Lavz;->a(Lavy;)Ldagger/internal/c;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/drafts/g;->e:Lden;

    .line 210
    iget-object v0, p0, Lcom/twitter/app/drafts/g;->c:Lden;

    .line 212
    invoke-static {v0}, Lcom/twitter/app/common/inject/h;->a(Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 211
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/drafts/g;->f:Lden;

    .line 214
    iget-object v0, p0, Lcom/twitter/app/drafts/g;->f:Lden;

    .line 216
    invoke-static {v0}, Lavr;->a(Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 215
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/drafts/g;->g:Lden;

    .line 219
    iget-object v0, p0, Lcom/twitter/app/drafts/g;->c:Lden;

    .line 220
    invoke-static {v0}, Lauw;->a(Lden;)Ldagger/internal/c;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/drafts/g;->h:Lden;

    .line 222
    iget-object v0, p0, Lcom/twitter/app/drafts/g;->h:Lden;

    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/drafts/g;->i:Lden;

    .line 227
    invoke-static {}, Ldagger/internal/MembersInjectors;->a()Lddo;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/app/drafts/g;->d:Lden;

    iget-object v2, p0, Lcom/twitter/app/drafts/g;->e:Lden;

    iget-object v3, p0, Lcom/twitter/app/drafts/g;->a:Lcom/twitter/app/drafts/c;

    .line 230
    invoke-static {v3}, Lcom/twitter/app/drafts/c;->a(Lcom/twitter/app/drafts/c;)Lden;

    move-result-object v3

    iget-object v4, p0, Lcom/twitter/app/drafts/g;->g:Lden;

    iget-object v5, p0, Lcom/twitter/app/drafts/g;->i:Lden;

    iget-object v6, p0, Lcom/twitter/app/drafts/g;->a:Lcom/twitter/app/drafts/c;

    .line 233
    invoke-static {v6}, Lcom/twitter/app/drafts/c;->b(Lcom/twitter/app/drafts/c;)Lden;

    move-result-object v6

    .line 226
    invoke-static/range {v0 .. v6}, Lcom/twitter/app/drafts/y;->a(Lddo;Lden;Lden;Lden;Lden;Lden;Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 225
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/drafts/g;->j:Lden;

    .line 235
    iget-object v0, p0, Lcom/twitter/app/drafts/g;->j:Lden;

    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/drafts/g;->k:Lden;

    .line 237
    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 238
    invoke-static {v0, v1}, Ldagger/internal/e;->a(II)Ldagger/internal/g;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/app/drafts/g;->a:Lcom/twitter/app/drafts/c;

    .line 239
    invoke-static {v1}, Lcom/twitter/app/drafts/c;->c(Lcom/twitter/app/drafts/c;)Lden;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldagger/internal/g;->a(Lden;)Ldagger/internal/g;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/app/drafts/g;->k:Lden;

    .line 240
    invoke-virtual {v0, v1}, Ldagger/internal/g;->a(Lden;)Ldagger/internal/g;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Ldagger/internal/g;->a()Ldagger/internal/e;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/drafts/g;->l:Lden;

    .line 243
    iget-object v0, p0, Lcom/twitter/app/drafts/g;->j:Lden;

    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/drafts/g;->m:Lden;

    .line 244
    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/app/common/inject/v;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/twitter/app/drafts/g;->m:Lden;

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
    .line 248
    iget-object v0, p0, Lcom/twitter/app/drafts/g;->l:Lden;

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method
