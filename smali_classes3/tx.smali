.class public final Ltx;
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
        "Lrx/o",
        "<",
        "Lcmf",
        "<",
        "Lcom/twitter/model/av/MonetizationCategory;",
        ">;>;>;"
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
            "Ltv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Ltx;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ltx;->a:Z

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
            "Ltv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-boolean v0, Ltx;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 23
    :cond_0
    iput-object p1, p0, Ltx;->b:Lden;

    .line 24
    return-void
.end method

.method public static a(Lden;)Ldagger/internal/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lden",
            "<",
            "Ltv;",
            ">;)",
            "Ldagger/internal/c",
            "<",
            "Lrx/o",
            "<",
            "Lcmf",
            "<",
            "Lcom/twitter/model/av/MonetizationCategory;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Ltx;

    invoke-direct {v0, p0}, Ltx;-><init>(Lden;)V

    return-object v0
.end method


# virtual methods
.method public a()Lrx/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/o",
            "<",
            "Lcmf",
            "<",
            "Lcom/twitter/model/av/MonetizationCategory;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Ltx;->b:Lden;

    .line 30
    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv;

    .line 29
    invoke-static {v0}, Ltw;->a(Ltv;)Lrx/o;

    move-result-object v0

    const-string/jumbo v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 28
    invoke-static {v0, v1}, Ldagger/internal/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/o;

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Ltx;->a()Lrx/o;

    move-result-object v0

    return-object v0
.end method
