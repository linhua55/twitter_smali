.class public final Labt;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldagger/internal/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/c",
        "<",
        "Labs;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Labu;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/android/media/selection/MediaAttachmentController;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/library/client/Session;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/library/client/bd;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lden;
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

.field private final h:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/model/timeline/cx;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/library/scribe/TwitterScribeItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Labt;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Labt;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lden;Lden;Lden;Lden;Lden;Lden;Lden;Lden;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lden",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Lden",
            "<",
            "Labu;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/android/media/selection/MediaAttachmentController;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/library/client/Session;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/library/client/bd;",
            ">;",
            "Lden",
            "<",
            "Lauf",
            "<",
            "Lcom/twitter/android/composer/ax;",
            ">;>;",
            "Lden",
            "<",
            "Lcom/twitter/model/timeline/cx;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/library/scribe/TwitterScribeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget-boolean v0, Labt;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 47
    :cond_0
    iput-object p1, p0, Labt;->b:Lden;

    .line 48
    sget-boolean v0, Labt;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 49
    :cond_1
    iput-object p2, p0, Labt;->c:Lden;

    .line 50
    sget-boolean v0, Labt;->a:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 51
    :cond_2
    iput-object p3, p0, Labt;->d:Lden;

    .line 52
    sget-boolean v0, Labt;->a:Z

    if-nez v0, :cond_3

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 53
    :cond_3
    iput-object p4, p0, Labt;->e:Lden;

    .line 54
    sget-boolean v0, Labt;->a:Z

    if-nez v0, :cond_4

    if-nez p5, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 55
    :cond_4
    iput-object p5, p0, Labt;->f:Lden;

    .line 56
    sget-boolean v0, Labt;->a:Z

    if-nez v0, :cond_5

    if-nez p6, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 57
    :cond_5
    iput-object p6, p0, Labt;->g:Lden;

    .line 58
    sget-boolean v0, Labt;->a:Z

    if-nez v0, :cond_6

    if-nez p7, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 59
    :cond_6
    iput-object p7, p0, Labt;->h:Lden;

    .line 60
    sget-boolean v0, Labt;->a:Z

    if-nez v0, :cond_7

    if-nez p8, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 61
    :cond_7
    iput-object p8, p0, Labt;->i:Lden;

    .line 62
    return-void
.end method

.method public static a(Lden;Lden;Lden;Lden;Lden;Lden;Lden;Lden;)Ldagger/internal/c;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lden",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Lden",
            "<",
            "Labu;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/android/media/selection/MediaAttachmentController;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/library/client/Session;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/library/client/bd;",
            ">;",
            "Lden",
            "<",
            "Lauf",
            "<",
            "Lcom/twitter/android/composer/ax;",
            ">;>;",
            "Lden",
            "<",
            "Lcom/twitter/model/timeline/cx;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/library/scribe/TwitterScribeItem;",
            ">;)",
            "Ldagger/internal/c",
            "<",
            "Labs;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    new-instance v0, Labt;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Labt;-><init>(Lden;Lden;Lden;Lden;Lden;Lden;Lden;Lden;)V

    return-object v0
.end method


# virtual methods
.method public a()Labs;
    .locals 9

    .prologue
    .line 66
    new-instance v0, Labs;

    iget-object v1, p0, Labt;->b:Lden;

    .line 67
    invoke-interface {v1}, Lden;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Labt;->c:Lden;

    .line 68
    invoke-interface {v2}, Lden;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labu;

    iget-object v3, p0, Labt;->d:Lden;

    .line 69
    invoke-interface {v3}, Lden;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/android/media/selection/MediaAttachmentController;

    iget-object v4, p0, Labt;->e:Lden;

    .line 70
    invoke-interface {v4}, Lden;->b()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/twitter/library/client/Session;

    iget-object v5, p0, Labt;->f:Lden;

    .line 71
    invoke-interface {v5}, Lden;->b()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/twitter/library/client/bd;

    iget-object v6, p0, Labt;->g:Lden;

    .line 72
    invoke-interface {v6}, Lden;->b()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lauf;

    iget-object v7, p0, Labt;->h:Lden;

    .line 73
    invoke-interface {v7}, Lden;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/twitter/model/timeline/cx;

    iget-object v8, p0, Labt;->i:Lden;

    .line 74
    invoke-interface {v8}, Lden;->b()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-direct/range {v0 .. v8}, Labs;-><init>(Landroid/content/Context;Labu;Lcom/twitter/android/media/selection/MediaAttachmentController;Lcom/twitter/library/client/Session;Lcom/twitter/library/client/bd;Lauf;Lcom/twitter/model/timeline/cx;Lcom/twitter/library/scribe/TwitterScribeItem;)V

    .line 66
    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Labt;->a()Labs;

    move-result-object v0

    return-object v0
.end method
