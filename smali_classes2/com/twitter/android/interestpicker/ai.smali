.class public final Lcom/twitter/android/interestpicker/ai;
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
        "Lcom/twitter/android/interestpicker/x;",
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
            "Lcom/twitter/android/interestpicker/aj;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/library/client/Session;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/library/client/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/twitter/android/interestpicker/ai;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/twitter/android/interestpicker/ai;->a:Z

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
            "Lcom/twitter/android/interestpicker/aj;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/library/client/Session;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/library/client/l;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-boolean v0, Lcom/twitter/android/interestpicker/ai;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 26
    :cond_0
    iput-object p1, p0, Lcom/twitter/android/interestpicker/ai;->b:Lden;

    .line 27
    sget-boolean v0, Lcom/twitter/android/interestpicker/ai;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 28
    :cond_1
    iput-object p2, p0, Lcom/twitter/android/interestpicker/ai;->c:Lden;

    .line 29
    sget-boolean v0, Lcom/twitter/android/interestpicker/ai;->a:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 30
    :cond_2
    iput-object p3, p0, Lcom/twitter/android/interestpicker/ai;->d:Lden;

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
            "Lcom/twitter/android/interestpicker/aj;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/library/client/Session;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/library/client/l;",
            ">;)",
            "Ldagger/internal/c",
            "<",
            "Lcom/twitter/android/interestpicker/x;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Lcom/twitter/android/interestpicker/ai;

    invoke-direct {v0, p0, p1, p2}, Lcom/twitter/android/interestpicker/ai;-><init>(Lden;Lden;Lden;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/twitter/android/interestpicker/x;
    .locals 4

    .prologue
    .line 35
    new-instance v3, Lcom/twitter/android/interestpicker/x;

    iget-object v0, p0, Lcom/twitter/android/interestpicker/ai;->b:Lden;

    .line 36
    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/interestpicker/aj;

    iget-object v1, p0, Lcom/twitter/android/interestpicker/ai;->c:Lden;

    invoke-interface {v1}, Lden;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/library/client/Session;

    iget-object v2, p0, Lcom/twitter/android/interestpicker/ai;->d:Lden;

    invoke-interface {v2}, Lden;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/library/client/l;

    invoke-direct {v3, v0, v1, v2}, Lcom/twitter/android/interestpicker/x;-><init>(Lcom/twitter/android/interestpicker/aj;Lcom/twitter/library/client/Session;Lcom/twitter/library/client/l;)V

    .line 35
    return-object v3
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/twitter/android/interestpicker/ai;->a()Lcom/twitter/android/interestpicker/x;

    move-result-object v0

    return-object v0
.end method
