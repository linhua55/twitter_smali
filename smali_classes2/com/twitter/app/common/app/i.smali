.class public final Lcom/twitter/app/common/app/i;
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
        "Lcom/twitter/app/common/app/InjectedApplication;",
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
            "Lauq;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Laup;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Laut;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/twitter/app/common/app/i;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/twitter/app/common/app/i;->a:Z

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
            "Lauq;",
            ">;",
            "Lden",
            "<",
            "Laup;",
            ">;",
            "Lden",
            "<",
            "Laut;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-boolean v0, Lcom/twitter/app/common/app/i;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 26
    :cond_0
    iput-object p1, p0, Lcom/twitter/app/common/app/i;->b:Lden;

    .line 27
    sget-boolean v0, Lcom/twitter/app/common/app/i;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 28
    :cond_1
    iput-object p2, p0, Lcom/twitter/app/common/app/i;->c:Lden;

    .line 29
    sget-boolean v0, Lcom/twitter/app/common/app/i;->a:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 30
    :cond_2
    iput-object p3, p0, Lcom/twitter/app/common/app/i;->d:Lden;

    .line 31
    return-void
.end method

.method public static a(Lden;Lden;Lden;)Lddo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lden",
            "<",
            "Lauq;",
            ">;",
            "Lden",
            "<",
            "Laup;",
            ">;",
            "Lden",
            "<",
            "Laut;",
            ">;)",
            "Lddo",
            "<",
            "Lcom/twitter/app/common/app/InjectedApplication;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Lcom/twitter/app/common/app/i;

    invoke-direct {v0, p0, p1, p2}, Lcom/twitter/app/common/app/i;-><init>(Lden;Lden;Lden;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/twitter/app/common/app/InjectedApplication;)V
    .locals 2

    .prologue
    .line 43
    if-nez p1, :cond_0

    .line 44
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Cannot inject members into a null reference"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/twitter/app/common/app/i;->b:Lden;

    invoke-static {p1, v0}, Lcom/twitter/app/common/base/b;->a(Lcom/twitter/app/common/base/BaseApplication;Lden;)V

    .line 48
    iget-object v0, p0, Lcom/twitter/app/common/app/i;->c:Lden;

    invoke-static {p1, v0}, Lcom/twitter/app/common/base/b;->b(Lcom/twitter/app/common/base/BaseApplication;Lden;)V

    .line 50
    iget-object v0, p0, Lcom/twitter/app/common/app/i;->d:Lden;

    invoke-static {p1, v0}, Lcom/twitter/app/common/base/b;->c(Lcom/twitter/app/common/base/BaseApplication;Lden;)V

    .line 52
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 9
    check-cast p1, Lcom/twitter/app/common/app/InjectedApplication;

    invoke-virtual {p0, p1}, Lcom/twitter/app/common/app/i;->a(Lcom/twitter/app/common/app/InjectedApplication;)V

    return-void
.end method
