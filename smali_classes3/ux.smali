.class public final Lux;
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
        "Lcom/twitter/library/av/playback/AVDataSource;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Luv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lux;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lux;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Luv;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-boolean v0, Lux;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 18
    :cond_0
    iput-object p1, p0, Lux;->b:Luv;

    .line 19
    return-void
.end method

.method public static a(Luv;)Ldagger/internal/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luv;",
            ")",
            "Ldagger/internal/c",
            "<",
            "Lcom/twitter/library/av/playback/AVDataSource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    new-instance v0, Lux;

    invoke-direct {v0, p0}, Lux;-><init>(Luv;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/twitter/library/av/playback/AVDataSource;
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lux;->b:Luv;

    .line 24
    invoke-virtual {v0}, Luv;->a()Lcom/twitter/library/av/playback/AVDataSource;

    move-result-object v0

    const-string/jumbo v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 23
    invoke-static {v0, v1}, Ldagger/internal/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/av/playback/AVDataSource;

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0}, Lux;->a()Lcom/twitter/library/av/playback/AVDataSource;

    move-result-object v0

    return-object v0
.end method
