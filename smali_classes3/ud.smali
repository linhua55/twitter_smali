.class public final Lud;
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
        "Lub;",
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
            "Lcom/twitter/library/av/playback/AVDataSource;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lden;
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

.field private final d:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Ltz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lud;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lud;->a:Z

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
            "Lcom/twitter/library/av/playback/AVDataSource;",
            ">;",
            "Lden",
            "<",
            "Lazt",
            "<",
            "Lcom/twitter/library/av/playback/AVDataSource;",
            "Lcmf",
            "<",
            "Lcom/twitter/model/av/ac;",
            ">;>;>;",
            "Lden",
            "<",
            "Ltz;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget-boolean v0, Lud;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 28
    :cond_0
    iput-object p1, p0, Lud;->b:Lden;

    .line 29
    sget-boolean v0, Lud;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 30
    :cond_1
    iput-object p2, p0, Lud;->c:Lden;

    .line 31
    sget-boolean v0, Lud;->a:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 32
    :cond_2
    iput-object p3, p0, Lud;->d:Lden;

    .line 33
    return-void
.end method

.method public static a(Lden;Lden;Lden;)Ldagger/internal/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lden",
            "<",
            "Lcom/twitter/library/av/playback/AVDataSource;",
            ">;",
            "Lden",
            "<",
            "Lazt",
            "<",
            "Lcom/twitter/library/av/playback/AVDataSource;",
            "Lcmf",
            "<",
            "Lcom/twitter/model/av/ac;",
            ">;>;>;",
            "Lden",
            "<",
            "Ltz;",
            ">;)",
            "Ldagger/internal/c",
            "<",
            "Lub;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Lud;

    invoke-direct {v0, p0, p1, p2}, Lud;-><init>(Lden;Lden;Lden;)V

    return-object v0
.end method


# virtual methods
.method public a()Lub;
    .locals 4

    .prologue
    .line 37
    new-instance v3, Lub;

    iget-object v0, p0, Lud;->b:Lden;

    .line 38
    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/av/playback/AVDataSource;

    iget-object v1, p0, Lud;->c:Lden;

    invoke-interface {v1}, Lden;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lazt;

    iget-object v2, p0, Lud;->d:Lden;

    invoke-interface {v2}, Lden;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltz;

    invoke-direct {v3, v0, v1, v2}, Lub;-><init>(Lcom/twitter/library/av/playback/AVDataSource;Lazt;Ltz;)V

    .line 37
    return-object v3
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lud;->a()Lub;

    move-result-object v0

    return-object v0
.end method
