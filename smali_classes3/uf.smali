.class public final Luf;
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
        "Lue;",
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
            "Lazt",
            "<",
            "Lcom/twitter/library/av/playback/AVDataSource;",
            "Lui;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Luf;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Luf;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lden;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lden",
            "<",
            "Lazt",
            "<",
            "Lcom/twitter/library/av/playback/AVDataSource;",
            "Lui;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-boolean v0, Luf;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 19
    :cond_0
    iput-object p1, p0, Luf;->b:Lden;

    .line 20
    return-void
.end method

.method public static a(Lden;)Ldagger/internal/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lden",
            "<",
            "Lazt",
            "<",
            "Lcom/twitter/library/av/playback/AVDataSource;",
            "Lui;",
            ">;>;)",
            "Ldagger/internal/c",
            "<",
            "Lue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    new-instance v0, Luf;

    invoke-direct {v0, p0}, Luf;-><init>(Lden;)V

    return-object v0
.end method


# virtual methods
.method public a()Lue;
    .locals 2

    .prologue
    .line 24
    new-instance v1, Lue;

    iget-object v0, p0, Luf;->b:Lden;

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lazt;

    invoke-direct {v1, v0}, Lue;-><init>(Lazt;)V

    return-object v1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Luf;->a()Lue;

    move-result-object v0

    return-object v0
.end method