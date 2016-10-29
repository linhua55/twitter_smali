.class public final Lun;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Luu;


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/library/av/playback/AVDataSource;",
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
            "Lcom/twitter/library/client/Session;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lug;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lazt",
            "<",
            "Lcom/twitter/library/av/playback/AVDataSource;",
            "Lcmf",
            "<",
            "Lcom/twitter/model/av/ac;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private g:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/library/provider/dm;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Ltz;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lub;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lazt",
            "<",
            "Lcom/twitter/library/av/playback/AVDataSource;",
            "Lui;",
            ">;>;"
        }
    .end annotation
.end field

.field private k:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lue;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/library/scribe/TwitterScribeAssociation;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/android/av/watchmode/e;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/android/av/watchmode/d;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/app/common/di/g;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/android/av/watchmode/g;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/app/common/di/g;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lden;
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

.field private s:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lun;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lun;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lus;)V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    sget-boolean v0, Lun;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 100
    :cond_0
    invoke-direct {p0, p1}, Lun;->a(Lus;)V

    .line 101
    return-void
.end method

.method synthetic constructor <init>(Lus;Luo;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lun;-><init>(Lus;)V

    return-void
.end method

.method static synthetic a(Lun;)Lden;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lun;->p:Lden;

    return-object v0
.end method

.method public static a()Lus;
    .locals 2

    .prologue
    .line 104
    new-instance v0, Lus;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lus;-><init>(Luo;)V

    return-object v0
.end method

.method private a(Lus;)V
    .locals 4

    .prologue
    .line 110
    .line 112
    invoke-static {p1}, Lus;->a(Lus;)Luv;

    move-result-object v0

    .line 111
    invoke-static {v0}, Lux;->a(Luv;)Ldagger/internal/c;

    move-result-object v0

    iput-object v0, p0, Lun;->b:Lden;

    .line 114
    new-instance v0, Luo;

    invoke-direct {v0, p0, p1}, Luo;-><init>(Lun;Lus;)V

    iput-object v0, p0, Lun;->c:Lden;

    .line 126
    new-instance v0, Lup;

    invoke-direct {v0, p0, p1}, Lup;-><init>(Lun;Lus;)V

    iput-object v0, p0, Lun;->d:Lden;

    .line 141
    invoke-static {}, Ldagger/internal/MembersInjectors;->a()Lddo;

    move-result-object v0

    iget-object v1, p0, Lun;->c:Lden;

    iget-object v2, p0, Lun;->d:Lden;

    .line 140
    invoke-static {v0, v1, v2}, Luh;->a(Lddo;Lden;Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 139
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lun;->e:Lden;

    .line 145
    iget-object v0, p0, Lun;->e:Lden;

    .line 146
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lun;->f:Lden;

    .line 148
    new-instance v0, Luq;

    invoke-direct {v0, p0, p1}, Luq;-><init>(Lun;Lus;)V

    iput-object v0, p0, Lun;->g:Lden;

    .line 163
    invoke-static {}, Ldagger/internal/MembersInjectors;->a()Lddo;

    move-result-object v0

    iget-object v1, p0, Lun;->g:Lden;

    .line 162
    invoke-static {v0, v1}, Lua;->a(Lddo;Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 161
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lun;->h:Lden;

    .line 165
    iget-object v0, p0, Lun;->b:Lden;

    iget-object v1, p0, Lun;->f:Lden;

    iget-object v2, p0, Lun;->h:Lden;

    .line 166
    invoke-static {v0, v1, v2}, Lud;->a(Lden;Lden;Lden;)Ldagger/internal/c;

    move-result-object v0

    iput-object v0, p0, Lun;->i:Lden;

    .line 171
    iget-object v0, p0, Lun;->i:Lden;

    .line 172
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lun;->j:Lden;

    .line 174
    iget-object v0, p0, Lun;->j:Lden;

    .line 176
    invoke-static {v0}, Luf;->a(Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 175
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lun;->k:Lden;

    .line 180
    invoke-static {p1}, Lus;->a(Lus;)Luv;

    move-result-object v0

    .line 179
    invoke-static {v0}, Luw;->a(Luv;)Ldagger/internal/c;

    move-result-object v0

    iput-object v0, p0, Lun;->l:Lden;

    .line 182
    iget-object v0, p0, Lun;->k:Lden;

    iget-object v1, p0, Lun;->b:Lden;

    iget-object v2, p0, Lun;->l:Lden;

    .line 184
    invoke-static {v0, v1, v2}, Lcom/twitter/android/av/watchmode/f;->a(Lden;Lden;Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 183
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lun;->m:Lden;

    .line 189
    iget-object v0, p0, Lun;->m:Lden;

    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lun;->n:Lden;

    .line 191
    iget-object v0, p0, Lun;->n:Lden;

    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lun;->o:Lden;

    .line 196
    invoke-static {}, Ldagger/internal/MembersInjectors;->a()Lddo;

    move-result-object v0

    iget-object v1, p0, Lun;->c:Lden;

    iget-object v2, p0, Lun;->l:Lden;

    iget-object v3, p0, Lun;->b:Lden;

    .line 195
    invoke-static {v0, v1, v2, v3}, Lcom/twitter/android/av/watchmode/h;->a(Lddo;Lden;Lden;Lden;)Ldagger/internal/c;

    move-result-object v0

    .line 194
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lun;->p:Lden;

    .line 201
    iget-object v0, p0, Lun;->p:Lden;

    .line 202
    invoke-static {v0}, Ldagger/internal/b;->a(Lden;)Lden;

    move-result-object v0

    iput-object v0, p0, Lun;->q:Lden;

    .line 204
    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 205
    invoke-static {v0, v1}, Ldagger/internal/e;->a(II)Ldagger/internal/g;

    move-result-object v0

    iget-object v1, p0, Lun;->o:Lden;

    .line 206
    invoke-virtual {v0, v1}, Ldagger/internal/g;->a(Lden;)Ldagger/internal/g;

    move-result-object v0

    iget-object v1, p0, Lun;->q:Lden;

    .line 207
    invoke-virtual {v0, v1}, Ldagger/internal/g;->a(Lden;)Ldagger/internal/g;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Ldagger/internal/g;->a()Ldagger/internal/e;

    move-result-object v0

    iput-object v0, p0, Lun;->r:Lden;

    .line 210
    new-instance v0, Lur;

    invoke-direct {v0, p0, p1}, Lur;-><init>(Lun;Lus;)V

    iput-object v0, p0, Lun;->s:Lden;

    .line 221
    return-void
.end method

.method static synthetic b(Lun;)Lden;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lun;->n:Lden;

    return-object v0
.end method

.method static synthetic c(Lun;)Lden;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lun;->s:Lden;

    return-object v0
.end method

.method static synthetic d(Lun;)Lden;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lun;->r:Lden;

    return-object v0
.end method


# virtual methods
.method public a(Luz;)Luy;
    .locals 2

    .prologue
    .line 230
    new-instance v0, Lut;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lut;-><init>(Lun;Luz;Luo;)V

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
    .line 225
    iget-object v0, p0, Lun;->r:Lden;

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method
