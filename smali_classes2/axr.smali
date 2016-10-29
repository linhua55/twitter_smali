.class public Laxr;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static final a:Laxr;


# instance fields
.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Laxr;

    invoke-direct {v0}, Laxr;-><init>()V

    sput-object v0, Laxr;->a:Laxr;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Laxr;->b:I

    .line 21
    return-void
.end method

.method public static a()Laxr;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Laxr;->a:Laxr;

    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Laxr;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laxr;->b:I

    .line 25
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    .line 28
    iget v0, p0, Laxr;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Laxr;->b:I

    .line 29
    iget v0, p0, Laxr;->b:I

    if-nez v0, :cond_0

    .line 31
    invoke-static {}, Lcom/twitter/app/common/app/l;->r()Lcom/twitter/app/common/app/l;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/twitter/app/common/app/l;->q()Lcom/twitter/library/client/bd;

    move-result-object v1

    new-instance v2, Lbtf;

    .line 33
    invoke-virtual {v0}, Lcom/twitter/app/common/app/l;->c()Landroid/content/Context;

    move-result-object v3

    .line 34
    invoke-virtual {v0}, Lcom/twitter/app/common/app/l;->p()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lbtf;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    .line 32
    invoke-virtual {v1, v2}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    .line 36
    :cond_0
    return-void
.end method
