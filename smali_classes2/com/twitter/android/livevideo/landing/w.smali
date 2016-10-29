.class public final Lcom/twitter/android/livevideo/landing/w;
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
        "Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;",
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
            "Labl;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/library/scribe/bj;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/android/timeline/bx;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Labq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/twitter/android/livevideo/landing/w;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/twitter/android/livevideo/landing/w;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lden;Lden;Lden;Lden;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lden",
            "<",
            "Labl;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/library/scribe/bj;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/android/timeline/bx;",
            ">;",
            "Lden",
            "<",
            "Labq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-boolean v0, Lcom/twitter/android/livevideo/landing/w;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 31
    :cond_0
    iput-object p1, p0, Lcom/twitter/android/livevideo/landing/w;->b:Lden;

    .line 32
    sget-boolean v0, Lcom/twitter/android/livevideo/landing/w;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 33
    :cond_1
    iput-object p2, p0, Lcom/twitter/android/livevideo/landing/w;->c:Lden;

    .line 34
    sget-boolean v0, Lcom/twitter/android/livevideo/landing/w;->a:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 35
    :cond_2
    iput-object p3, p0, Lcom/twitter/android/livevideo/landing/w;->d:Lden;

    .line 36
    sget-boolean v0, Lcom/twitter/android/livevideo/landing/w;->a:Z

    if-nez v0, :cond_3

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 37
    :cond_3
    iput-object p4, p0, Lcom/twitter/android/livevideo/landing/w;->e:Lden;

    .line 38
    return-void
.end method

.method public static a(Lden;Lden;Lden;Lden;)Lddo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lden",
            "<",
            "Labl;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/library/scribe/bj;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/android/timeline/bx;",
            ">;",
            "Lden",
            "<",
            "Labq;",
            ">;)",
            "Lddo",
            "<",
            "Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Lcom/twitter/android/livevideo/landing/w;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/twitter/android/livevideo/landing/w;-><init>(Lden;Lden;Lden;Lden;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;)V
    .locals 2

    .prologue
    .line 54
    if-nez p1, :cond_0

    .line 55
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Cannot inject members into a null reference"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/w;->b:Lden;

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labl;

    iput-object v0, p1, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->p:Labl;

    .line 58
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/w;->c:Lden;

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/bj;

    iput-object v0, p1, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->q:Lcom/twitter/library/scribe/bj;

    .line 59
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/w;->d:Lden;

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/timeline/bx;

    iput-object v0, p1, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->r:Lcom/twitter/android/timeline/bx;

    .line 60
    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/w;->e:Lden;

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labq;

    iput-object v0, p1, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;->s:Labq;

    .line 61
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;

    invoke-virtual {p0, p1}, Lcom/twitter/android/livevideo/landing/w;->a(Lcom/twitter/android/livevideo/landing/LiveVideoTimelineFragment;)V

    return-void
.end method
