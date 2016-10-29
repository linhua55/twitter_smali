.class public Ltv/periscope/android/ui/broadcast/au;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldmm;


# static fields
.field private static final a:Ltv/periscope/android/api/PsUser;


# instance fields
.field private final b:Ltv/periscope/android/library/d;

.field private final c:Ltv/periscope/android/api/PsUser;

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ltv/periscope/android/ui/broadcast/bo;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ltv/periscope/android/api/PsUser;

    invoke-direct {v0}, Ltv/periscope/android/api/PsUser;-><init>()V

    sput-object v0, Ltv/periscope/android/ui/broadcast/au;->a:Ltv/periscope/android/api/PsUser;

    .line 28
    sget-object v0, Ltv/periscope/android/ui/broadcast/au;->a:Ltv/periscope/android/api/PsUser;

    const-string/jumbo v1, ""

    iput-object v1, v0, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    .line 29
    sget-object v0, Ltv/periscope/android/ui/broadcast/au;->a:Ltv/periscope/android/api/PsUser;

    const-string/jumbo v1, ""

    iput-object v1, v0, Ltv/periscope/android/api/PsUser;->username:Ljava/lang/String;

    .line 30
    sget-object v0, Ltv/periscope/android/ui/broadcast/au;->a:Ltv/periscope/android/api/PsUser;

    const-string/jumbo v1, ""

    iput-object v1, v0, Ltv/periscope/android/api/PsUser;->displayName:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>(Ltv/periscope/android/library/d;)V
    .locals 1

    .prologue
    .line 44
    sget-object v0, Ltv/periscope/android/ui/broadcast/au;->a:Ltv/periscope/android/api/PsUser;

    invoke-direct {p0, p1, v0}, Ltv/periscope/android/ui/broadcast/au;-><init>(Ltv/periscope/android/library/d;Ltv/periscope/android/api/PsUser;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ltv/periscope/android/library/d;Ltv/periscope/android/api/PsUser;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Ltv/periscope/android/ui/broadcast/au;->b:Ltv/periscope/android/library/d;

    .line 49
    iput-object p2, p0, Ltv/periscope/android/ui/broadcast/au;->c:Ltv/periscope/android/api/PsUser;

    .line 50
    return-void
.end method

.method private a(Landroid/app/Activity;Ltv/periscope/android/player/d;Ltv/periscope/android/player/e;Ltv/periscope/android/player/c;)Ltv/periscope/android/ui/broadcast/bo;
    .locals 20

    .prologue
    .line 86
    new-instance v1, Ltv/periscope/android/ui/broadcast/bo;

    move-object/from16 v0, p0

    iget-object v2, v0, Ltv/periscope/android/ui/broadcast/au;->b:Ltv/periscope/android/library/d;

    invoke-interface {v2}, Ltv/periscope/android/library/d;->e()Lde/greenrobot/event/c;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Ltv/periscope/android/ui/broadcast/au;->b:Ltv/periscope/android/library/d;

    invoke-interface {v2}, Ltv/periscope/android/library/d;->f()Ltv/periscope/android/api/ApiManager;

    move-result-object v4

    const-string/jumbo v5, "api.periscope.tv"

    move-object/from16 v0, p0

    iget-object v2, v0, Ltv/periscope/android/ui/broadcast/au;->b:Ltv/periscope/android/library/d;

    invoke-interface {v2}, Ltv/periscope/android/library/d;->g()Ltv/periscope/android/data/f;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Ltv/periscope/android/ui/broadcast/au;->b:Ltv/periscope/android/library/d;

    .line 87
    invoke-interface {v2}, Ltv/periscope/android/library/d;->h()Ltv/periscope/android/data/b;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Ltv/periscope/android/ui/broadcast/au;->c:Ltv/periscope/android/api/PsUser;

    move-object/from16 v0, p0

    iget-object v2, v0, Ltv/periscope/android/ui/broadcast/au;->b:Ltv/periscope/android/library/d;

    invoke-interface {v2}, Ltv/periscope/android/library/d;->j()Ldmy;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Ltv/periscope/android/ui/broadcast/au;->b:Ltv/periscope/android/library/d;

    .line 88
    invoke-interface {v2}, Ltv/periscope/android/library/d;->m()Ldmy;

    move-result-object v12

    new-instance v13, Ltv/periscope/android/chat/p;

    invoke-direct {v13}, Ltv/periscope/android/chat/p;-><init>()V

    sget-object v14, Lretrofit/RestAdapter$LogLevel;->BASIC:Lretrofit/RestAdapter$LogLevel;

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v2, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v15, p4

    invoke-direct/range {v1 .. v19}, Ltv/periscope/android/ui/broadcast/bo;-><init>(Landroid/app/Activity;Lde/greenrobot/event/c;Ltv/periscope/android/api/ApiManager;Ljava/lang/String;Ltv/periscope/android/data/f;Ltv/periscope/android/data/b;Ltv/periscope/android/api/PsUser;Ltv/periscope/android/player/d;Ltv/periscope/android/player/e;Ldmy;Ldmy;Ltv/periscope/android/chat/a;Lretrofit/RestAdapter$LogLevel;Ltv/periscope/android/player/c;Ltv/periscope/android/ui/broadcast/cc;ZZLtv/periscope/android/chat/i;)V

    return-object v1
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/au;->b:Ltv/periscope/android/library/d;

    invoke-interface {v0}, Ltv/periscope/android/library/d;->h()Ltv/periscope/android/data/b;

    move-result-object v0

    invoke-interface {v0, p1}, Ltv/periscope/android/data/b;->a(Ljava/lang/String;)Ltv/periscope/model/o;

    move-result-object v0

    .line 94
    if-nez v0, :cond_0

    .line 96
    invoke-static {}, Ltv/periscope/model/o;->B()Ltv/periscope/model/p;

    move-result-object v0

    .line 97
    invoke-virtual {v0, p1}, Ltv/periscope/model/p;->a(Ljava/lang/String;)Ltv/periscope/model/p;

    move-result-object v0

    const-string/jumbo v1, ""

    .line 98
    invoke-virtual {v0, v1}, Ltv/periscope/model/p;->f(Ljava/lang/String;)Ltv/periscope/model/p;

    move-result-object v0

    const-string/jumbo v1, ""

    .line 99
    invoke-virtual {v0, v1}, Ltv/periscope/model/p;->i(Ljava/lang/String;)Ltv/periscope/model/p;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Ltv/periscope/model/p;->a()Ltv/periscope/model/o;

    move-result-object v0

    .line 101
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ltv/periscope/model/o;->b(Z)V

    .line 102
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/au;->b:Ltv/periscope/android/library/d;

    invoke-interface {v1}, Ltv/periscope/android/library/d;->h()Ltv/periscope/android/data/b;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Ltv/periscope/android/data/b;->a(Ljava/lang/String;Ltv/periscope/model/o;)V

    .line 104
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/au;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Ltv/periscope/android/player/PlayMode;Ltv/periscope/android/player/b;Ltv/periscope/android/player/d;Ltv/periscope/android/player/e;Ldml;)V
    .locals 4

    .prologue
    .line 63
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/au;->e:Ltv/periscope/android/ui/broadcast/bo;

    if-eqz v0, :cond_1

    .line 64
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/au;->f:Z

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/au;->e:Ltv/periscope/android/ui/broadcast/bo;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/bo;->D()V

    .line 67
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/au;->e:Ltv/periscope/android/ui/broadcast/bo;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/bo;->E()V

    .line 69
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/au;->d:Ljava/lang/ref/WeakReference;

    .line 70
    invoke-direct {p0, p2}, Ltv/periscope/android/ui/broadcast/au;->a(Ljava/lang/String;)V

    .line 72
    invoke-interface {p4}, Ltv/periscope/android/player/b;->a()Ltv/periscope/android/player/c;

    move-result-object v0

    invoke-direct {p0, p1, p5, p6, v0}, Ltv/periscope/android/ui/broadcast/au;->a(Landroid/app/Activity;Ltv/periscope/android/player/d;Ltv/periscope/android/player/e;Ltv/periscope/android/player/c;)Ltv/periscope/android/ui/broadcast/bo;

    move-result-object v0

    .line 73
    invoke-virtual {v0, p2}, Ltv/periscope/android/ui/broadcast/bo;->a(Ljava/lang/String;)Ltv/periscope/android/ui/broadcast/bo;

    move-result-object v0

    .line 74
    invoke-virtual {v0, p3}, Ltv/periscope/android/ui/broadcast/bo;->a(Ltv/periscope/android/player/PlayMode;)Ltv/periscope/android/ui/broadcast/bo;

    move-result-object v0

    .line 75
    invoke-virtual {v0, p7}, Ltv/periscope/android/ui/broadcast/bo;->a(Ldml;)Ltv/periscope/android/ui/broadcast/bo;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/au;->e:Ltv/periscope/android/ui/broadcast/bo;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/periscope/android/ui/broadcast/au;->f:Z

    .line 78
    iget-boolean v0, p3, Ltv/periscope/android/player/PlayMode;->replayable:Z

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/au;->e:Ltv/periscope/android/ui/broadcast/bo;

    invoke-interface {p6}, Ltv/periscope/android/player/e;->d()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ltv/periscope/android/ui/broadcast/bo;->c(J)Ltv/periscope/android/ui/broadcast/bo;

    .line 81
    :cond_2
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/au;->e:Ltv/periscope/android/ui/broadcast/bo;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/au;->e:Ltv/periscope/android/ui/broadcast/bo;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/bo;->w()V

    .line 115
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/au;->e:Ltv/periscope/android/ui/broadcast/bo;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/au;->e:Ltv/periscope/android/ui/broadcast/bo;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/bo;->x()V

    .line 121
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/au;->e:Ltv/periscope/android/ui/broadcast/bo;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/au;->e:Ltv/periscope/android/ui/broadcast/bo;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/bo;->C()V

    .line 127
    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/au;->e:Ltv/periscope/android/ui/broadcast/bo;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/au;->e:Ltv/periscope/android/ui/broadcast/bo;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/bo;->D()V

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/periscope/android/ui/broadcast/au;->f:Z

    .line 134
    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/au;->e:Ltv/periscope/android/ui/broadcast/bo;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/au;->e:Ltv/periscope/android/ui/broadcast/bo;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/bo;->E()V

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/au;->e:Ltv/periscope/android/ui/broadcast/bo;

    .line 141
    :cond_0
    return-void
.end method
