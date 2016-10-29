.class final Lut;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Luy;


# instance fields
.field final synthetic a:Lun;

.field private final b:Luz;

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
            "Lcom/twitter/android/av/watchmode/WatchModeLayoutManager;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/android/client/au;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/android/av/watchmode/view/a;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcwb;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/android/av/watchmode/view/w;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lauv;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Laux;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/android/av/watchmode/view/ab;",
            ">;"
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
.method private constructor <init>(Lun;Luz;)V
    .locals 1

    .prologue
    .line 290
    iput-object p1, p0, Lut;->a:Lun;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    invoke-static {p2}, Ldagger/internal/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luz;

    iput-object v0, p0, Lut;->b:Luz;

    .line 292
    invoke-direct {p0}, Lut;->c()V

    .line 293
    return-void
.end method

.method synthetic constructor <init>(Lun;Luz;Luo;)V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0, p1, p2}, Lut;-><init>(Lun;Luz;)V

    return-void
.end method

.method private c()V
    .locals 8

    .prologue
    .line 298
    iget-object v0, p0, Lut;->b:Luz;

    .line 300
    invoke-static {v0}, Lcom/twitter/app/common/inject/g;->a(Lcom/twitter/app/common/inject/f;)Ldagger/internal/c;

    move-result-object v0

    .line 299
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lut;->c:Lden;

    .line 302
    iget-object v0, p0, Lut;->c:Lden;

    .line 304
    invoke-static {v0}, Lcom/twitter/app/common/inject/i;->a(Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 303
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lut;->d:Lden;

    .line 309
    invoke-static {}, Ldagger/internal/MembersInjectors;->a()Lddo;

    move-result-object v0

    iget-object v1, p0, Lut;->c:Lden;

    .line 308
    invoke-static {v0, v1}, Lcom/twitter/android/av/watchmode/c;->a(Lddo;Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 307
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lut;->e:Lden;

    .line 311
    iget-object v0, p0, Lut;->e:Lden;

    .line 313
    invoke-static {v0}, Lva;->a(Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 312
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lut;->f:Lden;

    .line 316
    iget-object v0, p0, Lut;->c:Lden;

    .line 317
    invoke-static {v0}, Lcom/twitter/android/av/watchmode/view/b;->a(Lden;)Ldagger/internal/c;

    move-result-object v0

    iput-object v0, p0, Lut;->g:Lden;

    .line 319
    iget-object v0, p0, Lut;->a:Lun;

    .line 322
    invoke-static {v0}, Lun;->a(Lun;)Lden;

    move-result-object v0

    iget-object v1, p0, Lut;->g:Lden;

    iget-object v2, p0, Lut;->e:Lden;

    .line 321
    invoke-static {v0, v1, v2}, Lvb;->a(Lden;Lden;Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 320
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lut;->h:Lden;

    .line 329
    invoke-static {}, Ldagger/internal/MembersInjectors;->a()Lddo;

    move-result-object v0

    iget-object v1, p0, Lut;->h:Lden;

    iget-object v2, p0, Lut;->c:Lden;

    .line 328
    invoke-static {v0, v1, v2}, Lcom/twitter/android/av/watchmode/view/x;->a(Lddo;Lden;Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 327
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lut;->i:Lden;

    .line 333
    iget-object v0, p0, Lut;->c:Lden;

    .line 334
    invoke-static {v0}, Lauw;->a(Lden;)Ldagger/internal/c;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lut;->j:Lden;

    .line 336
    iget-object v0, p0, Lut;->j:Lden;

    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lut;->k:Lden;

    .line 341
    invoke-static {}, Ldagger/internal/MembersInjectors;->a()Lddo;

    move-result-object v0

    iget-object v1, p0, Lut;->d:Lden;

    iget-object v2, p0, Lut;->f:Lden;

    iget-object v3, p0, Lut;->a:Lun;

    .line 344
    invoke-static {v3}, Lun;->b(Lun;)Lden;

    move-result-object v3

    iget-object v4, p0, Lut;->a:Lun;

    .line 345
    invoke-static {v4}, Lun;->a(Lun;)Lden;

    move-result-object v4

    iget-object v5, p0, Lut;->a:Lun;

    .line 346
    invoke-static {v5}, Lun;->c(Lun;)Lden;

    move-result-object v5

    iget-object v6, p0, Lut;->i:Lden;

    iget-object v7, p0, Lut;->k:Lden;

    .line 340
    invoke-static/range {v0 .. v7}, Lcom/twitter/android/av/watchmode/view/ag;->a(Lddo;Lden;Lden;Lden;Lden;Lden;Lden;Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 339
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lut;->l:Lden;

    .line 350
    iget-object v0, p0, Lut;->l:Lden;

    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lut;->m:Lden;

    .line 351
    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/app/common/inject/v;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lut;->m:Lden;

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
    .line 355
    iget-object v0, p0, Lut;->a:Lun;

    invoke-static {v0}, Lun;->d(Lun;)Lden;

    move-result-object v0

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method
