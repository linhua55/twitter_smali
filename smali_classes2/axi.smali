.class public final Laxi;
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
        "Laxh;",
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
            "Laug",
            "<",
            "Lcom/twitter/android/nj;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Laxi;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Laxi;->a:Z

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
            "Laug",
            "<",
            "Lcom/twitter/android/nj;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    sget-boolean v0, Laxi;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 20
    :cond_0
    iput-object p1, p0, Laxi;->b:Lden;

    .line 21
    return-void
.end method

.method public static a(Lden;)Ldagger/internal/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lden",
            "<",
            "Laug",
            "<",
            "Lcom/twitter/android/nj;",
            ">;>;)",
            "Ldagger/internal/c",
            "<",
            "Laxh;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    new-instance v0, Laxi;

    invoke-direct {v0, p0}, Laxi;-><init>(Lden;)V

    return-object v0
.end method


# virtual methods
.method public a()Laxh;
    .locals 2

    .prologue
    .line 25
    new-instance v1, Laxh;

    iget-object v0, p0, Laxi;->b:Lden;

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laug;

    invoke-direct {v1, v0}, Laxh;-><init>(Laug;)V

    return-object v1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Laxi;->a()Laxh;

    move-result-object v0

    return-object v0
.end method