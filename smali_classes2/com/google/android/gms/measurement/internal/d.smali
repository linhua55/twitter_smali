.class public Lcom/google/android/gms/measurement/internal/d;
.super Lcom/google/android/gms/measurement/internal/cl;


# instance fields
.field private a:Lcom/google/android/gms/measurement/internal/h;

.field private b:Lcom/google/android/gms/measurement/b;

.field private c:Z


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/measurement/internal/bx;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/cl;-><init>(Lcom/google/android/gms/measurement/internal/bx;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/d;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZLjava/lang/String;)V
    .locals 1

    invoke-direct/range {p0 .. p7}, Lcom/google/android/gms/measurement/internal/d;->b(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/measurement/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/d;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/d;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZLjava/lang/String;)V
    .locals 8

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->l()Lcom/google/android/gms/internal/vj;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/vj;->a()J

    move-result-wide v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZLjava/lang/String;J)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZLjava/lang/String;J)V
    .locals 10

    invoke-static {p1}, Lcom/google/android/gms/common/internal/bm;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->o()Lcom/google/android/gms/measurement/internal/ag;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/measurement/internal/ag;->b(Ljava/lang/String;)V

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    if-eqz p3, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->u()Lcom/google/android/gms/measurement/internal/aj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/aj;->b()I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->o()Lcom/google/android/gms/measurement/internal/ag;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/ag;->d(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/ag;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    if-gt v2, v3, :cond_2

    const/4 v1, 0x1

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Event can\'t contain more then "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " params"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/google/android/gms/common/internal/bm;->b(ZLjava/lang/Object;)V

    move v1, v2

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->o()Lcom/google/android/gms/measurement/internal/ag;

    move-result-object v2

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lcom/google/android/gms/measurement/internal/ag;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->o()Lcom/google/android/gms/measurement/internal/ag;

    move-result-object v5

    invoke-virtual {v5, v6, v0, v2}, Lcom/google/android/gms/measurement/internal/ag;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->u()Lcom/google/android/gms/measurement/internal/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/aj;->w()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v0, :cond_4

    move-object v0, p1

    :goto_2
    const-string/jumbo v1, "_o"

    invoke-virtual {v6, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide/from16 v4, p6

    move v7, p4

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/measurement/internal/d;->a(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZLjava/lang/String;)V

    return-void

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/bm;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/bm;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->f()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->d()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->G()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->t()Lcom/google/android/gms/measurement/internal/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bn;->w()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->s()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bc;->y()Lcom/google/android/gms/measurement/internal/be;

    move-result-object v0

    const-string/jumbo v1, "User property not set since app measurement is disabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/be;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d;->n:Lcom/google/android/gms/measurement/internal/bx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bx;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->s()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bc;->y()Lcom/google/android/gms/measurement/internal/be;

    move-result-object v0

    const-string/jumbo v1, "Setting user property (FE)"

    invoke-virtual {v0, v1, p2, p3}, Lcom/google/android/gms/measurement/internal/be;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/UserAttributeParcel;

    move-object v1, p2

    move-wide v2, p4

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/UserAttributeParcel;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->k()Lcom/google/android/gms/measurement/internal/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/i;->a(Lcom/google/android/gms/measurement/internal/UserAttributeParcel;)V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->f()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->d()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->G()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->s()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bc;->y()Lcom/google/android/gms/measurement/internal/be;

    move-result-object v0

    const-string/jumbo v1, "Setting app measurement enabled (FE)"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/be;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->t()Lcom/google/android/gms/measurement/internal/bn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/bn;->b(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->k()Lcom/google/android/gms/measurement/internal/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i;->c()V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZLjava/lang/String;)V
    .locals 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/bm;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/bm;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p5}, Lcom/google/android/gms/common/internal/bm;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->f()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->G()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->t()Lcom/google/android/gms/measurement/internal/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bn;->w()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->s()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bc;->y()Lcom/google/android/gms/measurement/internal/be;

    move-result-object v0

    const-string/jumbo v1, "Event not sent since app measurement is disabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/be;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/d;->c:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/d;->c:Z

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/d;->v()V

    :cond_2
    if-eqz p6, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d;->b:Lcom/google/android/gms/measurement/b;

    if-eqz v0, :cond_3

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/ag;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->s()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bc;->y()Lcom/google/android/gms/measurement/internal/be;

    move-result-object v0

    const-string/jumbo v1, "Passing event to registered event handler (FE)"

    invoke-virtual {v0, v1, p2, p5}, Lcom/google/android/gms/measurement/internal/be;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d;->b:Lcom/google/android/gms/measurement/b;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/measurement/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d;->n:Lcom/google/android/gms/measurement/internal/bx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bx;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->s()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bc;->y()Lcom/google/android/gms/measurement/internal/be;

    move-result-object v0

    const-string/jumbo v1, "Logging event (FE)"

    invoke-virtual {v0, v1, p2, p5}, Lcom/google/android/gms/measurement/internal/be;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/EventParcel;

    new-instance v2, Lcom/google/android/gms/measurement/internal/EventParams;

    invoke-direct {v2, p5}, Lcom/google/android/gms/measurement/internal/EventParams;-><init>(Landroid/os/Bundle;)V

    move-object v1, p2

    move-object v3, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/EventParcel;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/EventParams;Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->k()Lcom/google/android/gms/measurement/internal/i;

    move-result-object v1

    invoke-virtual {v1, v0, p7}, Lcom/google/android/gms/measurement/internal/i;->a(Lcom/google/android/gms/measurement/internal/EventParcel;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private v()V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/d;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/d;->a(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->s()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bc;->x()Lcom/google/android/gms/measurement/internal/be;

    move-result-object v0

    const-string/jumbo v1, "Tag Manager is not found and thus will not be used"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/be;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private w()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "com.google.android.gms.tagmanager.TagManagerService"

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/Class;)V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    :try_start_0
    const-string/jumbo v0, "initialize"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->m()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->s()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/bc;->c()Lcom/google/android/gms/measurement/internal/be;

    move-result-object v1

    const-string/jumbo v2, "Failed to invoke Tag Manager\'s initialize() method"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/be;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZLjava/lang/String;)V
    .locals 11

    invoke-static/range {p5 .. p5}, Lcom/google/android/gms/common/internal/bm;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->r()Lcom/google/android/gms/measurement/internal/bt;

    move-result-object v9

    new-instance v0, Lcom/google/android/gms/measurement/internal/f;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/measurement/internal/f;-><init>(Lcom/google/android/gms/measurement/internal/d;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZLjava/lang/String;)V

    invoke-virtual {v9, v0}, Lcom/google/android/gms/measurement/internal/bt;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V
    .locals 9

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->r()Lcom/google/android/gms/measurement/internal/bt;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/g;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p5

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/g;-><init>(Lcom/google/android/gms/measurement/internal/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/bt;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->d()V

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZLjava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    invoke-static {p1}, Lcom/google/android/gms/common/internal/bm;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->l()Lcom/google/android/gms/internal/vj;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/vj;->a()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->o()Lcom/google/android/gms/measurement/internal/ag;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/measurement/internal/ag;->c(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->o()Lcom/google/android/gms/measurement/internal/ag;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/measurement/internal/ag;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->o()Lcom/google/android/gms/measurement/internal/ag;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/measurement/internal/ag;->c(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/d;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/d;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_0
.end method

.method public b()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->m()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->m()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/d;->a:Lcom/google/android/gms/measurement/internal/h;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/measurement/internal/h;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/measurement/internal/h;-><init>(Lcom/google/android/gms/measurement/internal/d;Lcom/google/android/gms/measurement/internal/e;)V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/d;->a:Lcom/google/android/gms/measurement/internal/h;

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/d;->a:Lcom/google/android/gms/measurement/internal/h;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/d;->a:Lcom/google/android/gms/measurement/internal/h;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->s()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bc;->z()Lcom/google/android/gms/measurement/internal/be;

    move-result-object v0

    const-string/jumbo v1, "Registered activity lifecycle callback"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/be;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public c()V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->f()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->d()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->G()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d;->n:Lcom/google/android/gms/measurement/internal/bx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bx;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->k()Lcom/google/android/gms/measurement/internal/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i;->v()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->t()Lcom/google/android/gms/measurement/internal/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/bn;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->j()Lcom/google/android/gms/measurement/internal/aq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/aq;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "_po"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "auto"

    const-string/jumbo v2, "_ou"

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/gms/measurement/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public bridge synthetic d()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/cl;->d()V

    return-void
.end method

.method public bridge synthetic e()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/cl;->e()V

    return-void
.end method

.method public bridge synthetic f()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/cl;->f()V

    return-void
.end method

.method public bridge synthetic g()Lcom/google/android/gms/measurement/internal/ai;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/cl;->g()Lcom/google/android/gms/measurement/internal/ai;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic h()Lcom/google/android/gms/measurement/internal/d;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/cl;->h()Lcom/google/android/gms/measurement/internal/d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic i()Lcom/google/android/gms/measurement/internal/ba;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/cl;->i()Lcom/google/android/gms/measurement/internal/ba;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic j()Lcom/google/android/gms/measurement/internal/aq;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/cl;->j()Lcom/google/android/gms/measurement/internal/aq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic k()Lcom/google/android/gms/measurement/internal/i;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/cl;->k()Lcom/google/android/gms/measurement/internal/i;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic l()Lcom/google/android/gms/internal/vj;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/cl;->l()Lcom/google/android/gms/internal/vj;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic m()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/cl;->m()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic n()Lcom/google/android/gms/measurement/internal/ak;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/cl;->n()Lcom/google/android/gms/measurement/internal/ak;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic o()Lcom/google/android/gms/measurement/internal/ag;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/cl;->o()Lcom/google/android/gms/measurement/internal/ag;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic p()Lcom/google/android/gms/measurement/internal/bs;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/cl;->p()Lcom/google/android/gms/measurement/internal/bs;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic q()Lcom/google/android/gms/measurement/internal/u;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/cl;->q()Lcom/google/android/gms/measurement/internal/u;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic r()Lcom/google/android/gms/measurement/internal/bt;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/cl;->r()Lcom/google/android/gms/measurement/internal/bt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic s()Lcom/google/android/gms/measurement/internal/bc;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/cl;->s()Lcom/google/android/gms/measurement/internal/bc;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic t()Lcom/google/android/gms/measurement/internal/bn;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/cl;->t()Lcom/google/android/gms/measurement/internal/bn;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic u()Lcom/google/android/gms/measurement/internal/aj;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/cl;->u()Lcom/google/android/gms/measurement/internal/aj;

    move-result-object v0

    return-object v0
.end method
