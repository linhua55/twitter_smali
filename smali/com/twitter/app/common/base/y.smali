.class public Lcom/twitter/app/common/base/y;
.super Lcom/twitter/library/client/d;
.source "Twttr"


# instance fields
.field a:Z

.field b:Z

.field c:I

.field d:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 817
    invoke-direct {p0}, Lcom/twitter/library/client/d;-><init>()V

    .line 812
    iput-boolean v0, p0, Lcom/twitter/app/common/base/y;->a:Z

    .line 813
    iput-boolean v0, p0, Lcom/twitter/app/common/base/y;->b:Z

    .line 814
    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/app/common/base/y;->c:I

    .line 815
    const/4 v0, 0x2

    iput v0, p0, Lcom/twitter/app/common/base/y;->d:I

    .line 818
    return-void
.end method

.method protected constructor <init>(Lcom/twitter/app/common/base/y;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 821
    invoke-direct {p0, p1}, Lcom/twitter/library/client/d;-><init>(Lcom/twitter/library/client/d;)V

    .line 812
    iput-boolean v0, p0, Lcom/twitter/app/common/base/y;->a:Z

    .line 813
    iput-boolean v0, p0, Lcom/twitter/app/common/base/y;->b:Z

    .line 814
    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/app/common/base/y;->c:I

    .line 815
    const/4 v0, 0x2

    iput v0, p0, Lcom/twitter/app/common/base/y;->d:I

    .line 822
    iget-boolean v0, p1, Lcom/twitter/app/common/base/y;->a:Z

    iput-boolean v0, p0, Lcom/twitter/app/common/base/y;->a:Z

    .line 823
    iget-boolean v0, p1, Lcom/twitter/app/common/base/y;->b:Z

    iput-boolean v0, p0, Lcom/twitter/app/common/base/y;->b:Z

    .line 824
    iget v0, p1, Lcom/twitter/app/common/base/y;->d:I

    iput v0, p0, Lcom/twitter/app/common/base/y;->d:I

    .line 825
    iget v0, p1, Lcom/twitter/app/common/base/y;->c:I

    iput v0, p0, Lcom/twitter/app/common/base/y;->c:I

    .line 826
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .prologue
    .line 839
    invoke-virtual {p0}, Lcom/twitter/app/common/base/y;->c()V

    .line 840
    iput p1, p0, Lcom/twitter/app/common/base/y;->c:I

    .line 841
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 866
    invoke-virtual {p0}, Lcom/twitter/app/common/base/y;->c()V

    .line 867
    iput-boolean p1, p0, Lcom/twitter/app/common/base/y;->a:Z

    .line 868
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 885
    invoke-virtual {p0}, Lcom/twitter/app/common/base/y;->c()V

    .line 886
    iput-boolean p1, p0, Lcom/twitter/app/common/base/y;->b:Z

    .line 887
    return-void
.end method
