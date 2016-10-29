.class public final Lcom/twitter/app/drafts/y;
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
        "Lcom/twitter/app/drafts/s;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Lddo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lddo",
            "<",
            "Lcom/twitter/app/drafts/s;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Landroid/view/LayoutInflater;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/app/drafts/x;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/app/drafts/m;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lauf",
            "<",
            "Lcom/twitter/android/composer/ax;",
            ">;>;"
        }
    .end annotation
.end field

.field private final g:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Laux;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lden;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lden",
            "<",
            "Lcom/twitter/app/drafts/p;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/twitter/app/drafts/y;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/twitter/app/drafts/y;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lddo;Lden;Lden;Lden;Lden;Lden;Lden;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lddo",
            "<",
            "Lcom/twitter/app/drafts/s;",
            ">;",
            "Lden",
            "<",
            "Landroid/view/LayoutInflater;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/app/drafts/x;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/app/drafts/m;",
            ">;",
            "Lden",
            "<",
            "Lauf",
            "<",
            "Lcom/twitter/android/composer/ax;",
            ">;>;",
            "Lden",
            "<",
            "Laux;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/app/drafts/p;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-boolean v0, Lcom/twitter/app/drafts/y;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 41
    :cond_0
    iput-object p1, p0, Lcom/twitter/app/drafts/y;->b:Lddo;

    .line 42
    sget-boolean v0, Lcom/twitter/app/drafts/y;->a:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 43
    :cond_1
    iput-object p2, p0, Lcom/twitter/app/drafts/y;->c:Lden;

    .line 44
    sget-boolean v0, Lcom/twitter/app/drafts/y;->a:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 45
    :cond_2
    iput-object p3, p0, Lcom/twitter/app/drafts/y;->d:Lden;

    .line 46
    sget-boolean v0, Lcom/twitter/app/drafts/y;->a:Z

    if-nez v0, :cond_3

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 47
    :cond_3
    iput-object p4, p0, Lcom/twitter/app/drafts/y;->e:Lden;

    .line 48
    sget-boolean v0, Lcom/twitter/app/drafts/y;->a:Z

    if-nez v0, :cond_4

    if-nez p5, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 49
    :cond_4
    iput-object p5, p0, Lcom/twitter/app/drafts/y;->f:Lden;

    .line 50
    sget-boolean v0, Lcom/twitter/app/drafts/y;->a:Z

    if-nez v0, :cond_5

    if-nez p6, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 51
    :cond_5
    iput-object p6, p0, Lcom/twitter/app/drafts/y;->g:Lden;

    .line 52
    sget-boolean v0, Lcom/twitter/app/drafts/y;->a:Z

    if-nez v0, :cond_6

    if-nez p7, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 53
    :cond_6
    iput-object p7, p0, Lcom/twitter/app/drafts/y;->h:Lden;

    .line 54
    return-void
.end method

.method public static a(Lddo;Lden;Lden;Lden;Lden;Lden;Lden;)Ldagger/internal/c;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lddo",
            "<",
            "Lcom/twitter/app/drafts/s;",
            ">;",
            "Lden",
            "<",
            "Landroid/view/LayoutInflater;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/app/drafts/x;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/app/drafts/m;",
            ">;",
            "Lden",
            "<",
            "Lauf",
            "<",
            "Lcom/twitter/android/composer/ax;",
            ">;>;",
            "Lden",
            "<",
            "Laux;",
            ">;",
            "Lden",
            "<",
            "Lcom/twitter/app/drafts/p;",
            ">;)",
            "Ldagger/internal/c",
            "<",
            "Lcom/twitter/app/drafts/s;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Lcom/twitter/app/drafts/y;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/twitter/app/drafts/y;-><init>(Lddo;Lden;Lden;Lden;Lden;Lden;Lden;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/twitter/app/drafts/s;
    .locals 8

    .prologue
    .line 58
    iget-object v7, p0, Lcom/twitter/app/drafts/y;->b:Lddo;

    new-instance v0, Lcom/twitter/app/drafts/s;

    iget-object v1, p0, Lcom/twitter/app/drafts/y;->c:Lden;

    .line 61
    invoke-interface {v1}, Lden;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/twitter/app/drafts/y;->d:Lden;

    .line 62
    invoke-interface {v2}, Lden;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/app/drafts/x;

    iget-object v3, p0, Lcom/twitter/app/drafts/y;->e:Lden;

    .line 63
    invoke-interface {v3}, Lden;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/app/drafts/m;

    iget-object v4, p0, Lcom/twitter/app/drafts/y;->f:Lden;

    .line 64
    invoke-interface {v4}, Lden;->b()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lauf;

    iget-object v5, p0, Lcom/twitter/app/drafts/y;->g:Lden;

    .line 65
    invoke-interface {v5}, Lden;->b()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laux;

    iget-object v6, p0, Lcom/twitter/app/drafts/y;->h:Lden;

    .line 66
    invoke-interface {v6}, Lden;->b()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/twitter/app/drafts/p;

    invoke-direct/range {v0 .. v6}, Lcom/twitter/app/drafts/s;-><init>(Landroid/view/LayoutInflater;Lcom/twitter/app/drafts/x;Lcom/twitter/app/drafts/m;Lauf;Laux;Lcom/twitter/app/drafts/p;)V

    .line 58
    invoke-static {v7, v0}, Ldagger/internal/MembersInjectors;->a(Lddo;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/drafts/s;

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/twitter/app/drafts/y;->a()Lcom/twitter/app/drafts/s;

    move-result-object v0

    return-object v0
.end method
