.class public final Lcom/twitter/android/livevideo/landing/di/r;
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
        "Lcom/twitter/app/common/list/w;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Lcom/twitter/android/livevideo/landing/di/l;

.field private final c:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/android/livevideo/landing/a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lden;
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
    .line 11
    const-class v0, Lcom/twitter/android/livevideo/landing/di/r;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/twitter/android/livevideo/landing/di/r;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/twitter/android/livevideo/landing/di/l;Lden;Lden;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/livevideo/landing/di/l;",
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
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget-boolean v0, Lcom/twitter/android/livevideo/landing/di/r;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 28
    :cond_0
    iput-object p1, p0, Lcom/twitter/android/livevideo/landing/di/r;->b:Lcom/twitter/android/livevideo/landing/di/l;

    .line 29
    sget-boolean v0, Lcom/twitter/android/livevideo/landing/di/r;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 30
    :cond_1
    iput-object p2, p0, Lcom/twitter/android/livevideo/landing/di/r;->c:Lden;

    .line 31
    sget-boolean v0, Lcom/twitter/android/livevideo/landing/di/r;->a:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 32
    :cond_2
    iput-object p3, p0, Lcom/twitter/android/livevideo/landing/di/r;->d:Lden;

    .line 33
    return-void
.end method

.method public static a(Lcom/twitter/android/livevideo/landing/di/l;Lden;Lden;)Ldagger/internal/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/livevideo/landing/di/l;",
            "Lden",
            "<",
            "Lcom/twitter/android/livevideo/landing/a;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/library/scribe/TwitterScribeItem;",
            ">;)",
            "Ldagger/internal/c",
            "<",
            "Lcom/twitter/app/common/list/w;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Lcom/twitter/android/livevideo/landing/di/r;

    invoke-direct {v0, p0, p1, p2}, Lcom/twitter/android/livevideo/landing/di/r;-><init>(Lcom/twitter/android/livevideo/landing/di/l;Lden;Lden;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/twitter/app/common/list/w;
    .locals 3

    .prologue
    .line 37
    iget-object v2, p0, Lcom/twitter/android/livevideo/landing/di/r;->b:Lcom/twitter/android/livevideo/landing/di/l;

    iget-object v0, p0, Lcom/twitter/android/livevideo/landing/di/r;->c:Lden;

    .line 38
    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/livevideo/landing/a;

    iget-object v1, p0, Lcom/twitter/android/livevideo/landing/di/r;->d:Lden;

    invoke-interface {v1}, Lden;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-virtual {v2, v0, v1}, Lcom/twitter/android/livevideo/landing/di/l;->a(Lcom/twitter/android/livevideo/landing/a;Lcom/twitter/library/scribe/TwitterScribeItem;)Lcom/twitter/app/common/list/w;

    move-result-object v0

    const-string/jumbo v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 37
    invoke-static {v0, v1}, Ldagger/internal/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/w;

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/twitter/android/livevideo/landing/di/r;->a()Lcom/twitter/app/common/list/w;

    move-result-object v0

    return-object v0
.end method
