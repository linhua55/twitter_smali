.class public final Lcom/twitter/android/av/watchmode/f;
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
        "Lcom/twitter/android/av/watchmode/e;",
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
            "Lue;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/library/av/playback/AVDataSource;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/library/scribe/TwitterScribeAssociation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/twitter/android/av/watchmode/f;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/twitter/android/av/watchmode/f;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lden;Lden;Lden;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lden",
            "<",
            "Lue;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/library/av/playback/AVDataSource;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/library/scribe/TwitterScribeAssociation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-boolean v0, Lcom/twitter/android/av/watchmode/f;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 26
    :cond_0
    iput-object p1, p0, Lcom/twitter/android/av/watchmode/f;->b:Lden;

    .line 27
    sget-boolean v0, Lcom/twitter/android/av/watchmode/f;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 28
    :cond_1
    iput-object p2, p0, Lcom/twitter/android/av/watchmode/f;->c:Lden;

    .line 29
    sget-boolean v0, Lcom/twitter/android/av/watchmode/f;->a:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 30
    :cond_2
    iput-object p3, p0, Lcom/twitter/android/av/watchmode/f;->d:Lden;

    .line 31
    return-void
.end method

.method public static a(Lden;Lden;Lden;)Ldagger/internal/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lden",
            "<",
            "Lue;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/library/av/playback/AVDataSource;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/library/scribe/TwitterScribeAssociation;",
            ">;)",
            "Ldagger/internal/c",
            "<",
            "Lcom/twitter/android/av/watchmode/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Lcom/twitter/android/av/watchmode/f;

    invoke-direct {v0, p0, p1, p2}, Lcom/twitter/android/av/watchmode/f;-><init>(Lden;Lden;Lden;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/twitter/android/av/watchmode/e;
    .locals 4

    .prologue
    .line 35
    new-instance v3, Lcom/twitter/android/av/watchmode/e;

    iget-object v0, p0, Lcom/twitter/android/av/watchmode/f;->b:Lden;

    .line 36
    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lue;

    iget-object v1, p0, Lcom/twitter/android/av/watchmode/f;->c:Lden;

    invoke-interface {v1}, Lden;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/library/av/playback/AVDataSource;

    iget-object v2, p0, Lcom/twitter/android/av/watchmode/f;->d:Lden;

    invoke-interface {v2}, Lden;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-direct {v3, v0, v1, v2}, Lcom/twitter/android/av/watchmode/e;-><init>(Lue;Lcom/twitter/library/av/playback/AVDataSource;Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 35
    return-object v3
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/twitter/android/av/watchmode/f;->a()Lcom/twitter/android/av/watchmode/e;

    move-result-object v0

    return-object v0
.end method
