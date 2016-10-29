.class public final Lcom/twitter/android/livevideo/landing/m;
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
        "Lcom/twitter/android/livevideo/landing/c;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Lddo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lddo",
            "<",
            "Lcom/twitter/android/livevideo/landing/c;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/app/common/base/BaseFragmentActivity;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/app/common/inject/t;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/app/common/base/n;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/android/media/selection/MediaAttachmentController;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Laby;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/app/common/list/w;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/android/livevideo/player/m;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/library/scribe/TwitterScribeAssociation;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/android/livevideo/landing/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/twitter/android/livevideo/landing/m;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/twitter/android/livevideo/landing/m;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lddo;Lden;Lden;Lden;Lden;Lden;Lden;Lden;Lden;Lden;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lddo",
            "<",
            "Lcom/twitter/android/livevideo/landing/c;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/app/common/base/BaseFragmentActivity;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/app/common/inject/t;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/app/common/base/n;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/android/media/selection/MediaAttachmentController;",
            ">;",
            "Lden",
            "<",
            "Laby;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/app/common/list/w;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/android/livevideo/player/m;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/library/scribe/TwitterScribeAssociation;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/android/livevideo/landing/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    sget-boolean v0, Lcom/twitter/android/livevideo/landing/m;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 54
    :cond_0
    iput-object p1, p0, Lcom/twitter/android/livevideo/landing/m;->b:Lddo;

    .line 55
    sget-boolean v0, Lcom/twitter/android/livevideo/landing/m;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 56
    :cond_1
    iput-object p2, p0, Lcom/twitter/android/livevideo/landing/m;->c:Lden;

    .line 57
    sget-boolean v0, Lcom/twitter/android/livevideo/landing/m;->a:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 58
    :cond_2
    iput-object p3, p0, Lcom/twitter/android/livevideo/landing/m;->d:Lden;

    .line 59
    sget-boolean v0, Lcom/twitter/android/livevideo/landing/m;->a:Z

    if-nez v0, :cond_3

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 60
    :cond_3
    iput-object p4, p0, Lcom/twitter/android/livevideo/landing/m;->e:Lden;

    .line 61
    sget-boolean v0, Lcom/twitter/android/livevideo/landing/m;->a:Z

    if-nez v0, :cond_4

    if-nez p5, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 62
    :cond_4
    iput-object p5, p0, Lcom/twitter/android/livevideo/landing/m;->f:Lden;

    .line 63
    sget-boolean v0, Lcom/twitter/android/livevideo/landing/m;->a:Z

    if-nez v0, :cond_5

    if-nez p6, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 64
    :cond_5
    iput-object p6, p0, Lcom/twitter/android/livevideo/landing/m;->g:Lden;

    .line 65
    sget-boolean v0, Lcom/twitter/android/livevideo/landing/m;->a:Z

    if-nez v0, :cond_6

    if-nez p7, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 66
    :cond_6
    iput-object p7, p0, Lcom/twitter/android/livevideo/landing/m;->h:Lden;

    .line 67
    sget-boolean v0, Lcom/twitter/android/livevideo/landing/m;->a:Z

    if-nez v0, :cond_7

    if-nez p8, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 68
    :cond_7
    iput-object p8, p0, Lcom/twitter/android/livevideo/landing/m;->i:Lden;

    .line 69
    sget-boolean v0, Lcom/twitter/android/livevideo/landing/m;->a:Z

    if-nez v0, :cond_8

    if-nez p9, :cond_8

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 70
    :cond_8
    iput-object p9, p0, Lcom/twitter/android/livevideo/landing/m;->j:Lden;

    .line 71
    sget-boolean v0, Lcom/twitter/android/livevideo/landing/m;->a:Z

    if-nez v0, :cond_9

    if-nez p10, :cond_9

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 72
    :cond_9
    iput-object p10, p0, Lcom/twitter/android/livevideo/landing/m;->k:Lden;

    .line 73
    return-void
.end method

.method public static a(Lddo;Lden;Lden;Lden;Lden;Lden;Lden;Lden;Lden;Lden;)Ldagger/internal/c;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lddo",
            "<",
            "Lcom/twitter/android/livevideo/landing/c;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/app/common/base/BaseFragmentActivity;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/app/common/inject/t;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/app/common/base/n;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/android/media/selection/MediaAttachmentController;",
            ">;",
            "Lden",
            "<",
            "Laby;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/app/common/list/w;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/android/livevideo/player/m;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/library/scribe/TwitterScribeAssociation;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/android/livevideo/landing/a;",
            ">;)",
            "Ldagger/internal/c",
            "<",
            "Lcom/twitter/android/livevideo/landing/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Lcom/twitter/android/livevideo/landing/m;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/twitter/android/livevideo/landing/m;-><init>(Lddo;Lden;Lden;Lden;Lden;Lden;Lden;Lden;Lden;Lden;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/twitter/android/livevideo/landing/c;
    .locals 11

    .prologue
    .line 77
    iget-object v10, p0, Lcom/twitter/android/livevideo/landing/m;->b:Lddo;

    new-instance v0, Lcom/twitter/android/livevideo/landing/c;

    iget-object v1, p0, Lcom/twitter/android/livevideo/landing/m;->c:Lden;

    .line 80
    invoke-interface {v1}, Lden;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/app/common/base/BaseFragmentActivity;

    iget-object v2, p0, Lcom/twitter/android/livevideo/landing/m;->d:Lden;

    .line 81
    invoke-interface {v2}, Lden;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/app/common/inject/t;

    iget-object v3, p0, Lcom/twitter/android/livevideo/landing/m;->e:Lden;

    .line 82
    invoke-interface {v3}, Lden;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/app/common/base/n;

    iget-object v4, p0, Lcom/twitter/android/livevideo/landing/m;->f:Lden;

    .line 83
    invoke-interface {v4}, Lden;->b()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/twitter/android/media/selection/MediaAttachmentController;

    iget-object v5, p0, Lcom/twitter/android/livevideo/landing/m;->g:Lden;

    .line 84
    invoke-interface {v5}, Lden;->b()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laby;

    iget-object v6, p0, Lcom/twitter/android/livevideo/landing/m;->h:Lden;

    .line 85
    invoke-interface {v6}, Lden;->b()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/twitter/app/common/list/w;

    iget-object v7, p0, Lcom/twitter/android/livevideo/landing/m;->i:Lden;

    .line 86
    invoke-interface {v7}, Lden;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/twitter/android/livevideo/player/m;

    iget-object v8, p0, Lcom/twitter/android/livevideo/landing/m;->j:Lden;

    .line 87
    invoke-interface {v8}, Lden;->b()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iget-object v9, p0, Lcom/twitter/android/livevideo/landing/m;->k:Lden;

    .line 88
    invoke-interface {v9}, Lden;->b()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/twitter/android/livevideo/landing/a;

    invoke-direct/range {v0 .. v9}, Lcom/twitter/android/livevideo/landing/c;-><init>(Lcom/twitter/app/common/base/BaseFragmentActivity;Lcom/twitter/app/common/inject/t;Lcom/twitter/app/common/base/n;Lcom/twitter/android/media/selection/MediaAttachmentController;Laby;Lcom/twitter/app/common/list/w;Lcom/twitter/android/livevideo/player/m;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/android/livevideo/landing/a;)V

    .line 77
    invoke-static {v10, v0}, Ldagger/internal/MembersInjectors;->a(Lddo;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/livevideo/landing/c;

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/twitter/android/livevideo/landing/m;->a()Lcom/twitter/android/livevideo/landing/c;

    move-result-object v0

    return-object v0
.end method
