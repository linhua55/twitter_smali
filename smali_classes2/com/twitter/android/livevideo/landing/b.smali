.class public final Lcom/twitter/android/livevideo/landing/b;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lddo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lddo",
        "<",
        "Lcom/twitter/android/livevideo/landing/LiveVideoLandingActivity;",
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
            "Labr;",
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
            "Lcom/twitter/android/livevideo/landing/a;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lden;
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
    .line 10
    const-class v0, Lcom/twitter/android/livevideo/landing/b;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/twitter/android/livevideo/landing/b;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lden;Lden;Lden;Lden;Lden;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lden",
            "<",
            "Lcom/twitter/android/livevideo/landing/c;",
            ">;",
            "Lden",
            "<",
            "Labr;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/android/media/selection/MediaAttachmentController;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/android/livevideo/landing/a;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/library/scribe/TwitterScribeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-boolean v0, Lcom/twitter/android/livevideo/landing/b;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 33
    :cond_0
    iput-object p1, p0, Lcom/twitter/android/livevideo/landing/b;->b:Lden;

    .line 34
    sget-boolean v0, Lcom/twitter/android/livevideo/landing/b;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 35
    :cond_1
    iput-object p2, p0, Lcom/twitter/android/livevideo/landing/b;->c:Lden;

    .line 36
    sget-boolean v0, Lcom/twitter/android/livevideo/landing/b;->a:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 37
    :cond_2
    iput-object p3, p0, Lcom/twitter/android/livevideo/landing/b;->d:Lden;

    .line 38
    sget-boolean v0, Lcom/twitter/android/livevideo/landing/b;->a:Z

    if-nez v0, :cond_3

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 39
    :cond_3
    iput-object p4, p0, Lcom/twitter/android/livevideo/landing/b;->e:Lden;

    .line 40
    sget-boolean v0, Lcom/twitter/android/livevideo/landing/b;->a:Z

    if-nez v0, :cond_4

    if-nez p5, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 41
    :cond_4
    iput-object p5, p0, Lcom/twitter/android/livevideo/landing/b;->f:Lden;

    .line 42
    return-void
.end method

.method public static a(Lden;Lden;Lden;Lden;Lden;)Lddo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lden",
            "<",
            "Lcom/twitter/android/livevideo/landing/c;",
            ">;",
            "Lden",
            "<",
            "Labr;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/android/media/selection/MediaAttachmentController;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/android/livevideo/landing/a;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/library/scribe/TwitterScribeItem;",
            ">;)",
            "Lddo",
            "<",
            "Lcom/twitter/android/livevideo/landing/LiveVideoLandingActivity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Lcom/twitter/android/livevideo/landing/b;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/livevideo/landing/b;-><init>(Lden;Lden;Lden;Lden;Lden;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/twitter/android/livevideo/landing/LiveVideoLandingActivity;)V
    .locals 2

    .prologue
    .line 60
    if-nez p1, :cond_0

    .line 61
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Cannot inject members into a null reference"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/b;->b:Lden;

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/livevideo/landing/c;

    iput-object v0, p1, Lcom/twitter/android/livevideo/landing/LiveVideoLandingActivity;->c:Lcom/twitter/android/livevideo/landing/c;

    .line 64
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/b;->c:Lden;

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labr;

    iput-object v0, p1, Lcom/twitter/android/livevideo/landing/LiveVideoLandingActivity;->d:Labr;

    .line 65
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/b;->d:Lden;

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/media/selection/MediaAttachmentController;

    iput-object v0, p1, Lcom/twitter/android/livevideo/landing/LiveVideoLandingActivity;->e:Lcom/twitter/android/media/selection/MediaAttachmentController;

    .line 66
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/b;->e:Lden;

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/livevideo/landing/a;

    iput-object v0, p1, Lcom/twitter/android/livevideo/landing/LiveVideoLandingActivity;->f:Lcom/twitter/android/livevideo/landing/a;

    .line 67
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/b;->f:Lden;

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeItem;

    iput-object v0, p1, Lcom/twitter/android/livevideo/landing/LiveVideoLandingActivity;->g:Lcom/twitter/library/scribe/TwitterScribeItem;

    .line 68
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Lcom/twitter/android/livevideo/landing/LiveVideoLandingActivity;

    invoke-virtual {p0, p1}, Lcom/twitter/android/livevideo/landing/b;->a(Lcom/twitter/android/livevideo/landing/LiveVideoLandingActivity;)V

    return-void
.end method
