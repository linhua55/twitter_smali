.class public Lcom/twitter/app/common/util/b;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/app/common/util/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/twitter/app/common/util/w;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/app/common/util/w;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Lcom/twitter/util/collection/MutableList;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/common/util/b;->a:Ljava/util/List;

    .line 30
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/twitter/app/common/util/b;->b:Landroid/util/SparseArray;

    .line 32
    invoke-static {}, Lcom/twitter/util/collection/MutableList;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/common/util/b;->c:Ljava/util/List;

    .line 31
    return-void
.end method


# virtual methods
.method public a(ILcom/twitter/app/common/util/w;)V
    .locals 3

    .prologue
    .line 68
    invoke-static {}, Lcom/twitter/util/h;->a()V

    .line 69
    const v0, 0xffff

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/twitter/util/h;->b(Z)Z

    .line 70
    iget-object v0, p0, Lcom/twitter/app/common/util/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/twitter/app/common/util/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 75
    return-void

    .line 69
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 73
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "The request code is duplicate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 107
    invoke-static {}, Lcom/twitter/util/h;->a()V

    .line 108
    iget-object v2, p0, Lcom/twitter/app/common/util/b;->a:Ljava/util/List;

    .line 109
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 110
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/util/a;

    invoke-interface {v0, p1}, Lcom/twitter/app/common/util/a;->onActivityStarted(Landroid/app/Activity;)V

    .line 109
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 112
    :cond_0
    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 98
    invoke-static {}, Lcom/twitter/util/h;->a()V

    .line 99
    iget-object v2, p0, Lcom/twitter/app/common/util/b;->a:Ljava/util/List;

    .line 100
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 101
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/util/a;

    invoke-interface {v0, p1, p2}, Lcom/twitter/app/common/util/a;->a(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 100
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 103
    :cond_0
    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/content/res/Configuration;)V
    .locals 3

    .prologue
    .line 178
    invoke-static {}, Lcom/twitter/util/h;->a()V

    .line 179
    iget-object v2, p0, Lcom/twitter/app/common/util/b;->a:Ljava/util/List;

    .line 180
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 181
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/util/a;

    invoke-interface {v0, p1, p2}, Lcom/twitter/app/common/util/a;->a(Landroid/app/Activity;Landroid/content/res/Configuration;)V

    .line 180
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 183
    :cond_0
    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 89
    invoke-static {}, Lcom/twitter/util/h;->a()V

    .line 90
    iget-object v2, p0, Lcom/twitter/app/common/util/b;->a:Ljava/util/List;

    .line 91
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 92
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/util/a;

    invoke-interface {v0, p1, p2}, Lcom/twitter/app/common/util/a;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 91
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 94
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/app/common/util/a;)V
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lcom/twitter/util/h;->a()V

    .line 37
    iget-object v0, p0, Lcom/twitter/app/common/util/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method

.method public a(Lcom/twitter/app/common/util/w;)V
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lcom/twitter/util/h;->a()V

    .line 49
    iget-object v0, p0, Lcom/twitter/app/common/util/b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    return-void
.end method

.method public a(I)Z
    .locals 1

    .prologue
    .line 79
    invoke-static {}, Lcom/twitter/util/h;->a()V

    .line 80
    iget-object v0, p0, Lcom/twitter/app/common/util/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/twitter/app/common/util/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 82
    const/4 v0, 0x1

    .line 84
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;IILandroid/content/Intent;)Z
    .locals 3

    .prologue
    .line 162
    invoke-static {}, Lcom/twitter/util/h;->a()V

    .line 163
    iget-object v2, p0, Lcom/twitter/app/common/util/b;->c:Ljava/util/List;

    .line 164
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 165
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/util/w;

    invoke-interface {v0, p1, p3, p4}, Lcom/twitter/app/common/util/w;->a(Landroid/app/Activity;ILandroid/content/Intent;)V

    .line 164
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/twitter/app/common/util/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/util/w;

    .line 169
    if-eqz v0, :cond_1

    .line 170
    invoke-interface {v0, p1, p3, p4}, Lcom/twitter/app/common/util/w;->a(Landroid/app/Activity;ILandroid/content/Intent;)V

    .line 171
    const/4 v0, 0x1

    .line 173
    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 116
    invoke-static {}, Lcom/twitter/util/h;->a()V

    .line 117
    iget-object v2, p0, Lcom/twitter/app/common/util/b;->a:Ljava/util/List;

    .line 118
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 119
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/util/a;

    invoke-interface {v0, p1}, Lcom/twitter/app/common/util/a;->onActivityResumed(Landroid/app/Activity;)V

    .line 118
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 121
    :cond_0
    return-void
.end method

.method public b(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 143
    invoke-static {}, Lcom/twitter/util/h;->a()V

    .line 144
    iget-object v2, p0, Lcom/twitter/app/common/util/b;->a:Ljava/util/List;

    .line 145
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 146
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/util/a;

    invoke-interface {v0, p1, p2}, Lcom/twitter/app/common/util/a;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 145
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 148
    :cond_0
    return-void
.end method

.method public b(Lcom/twitter/app/common/util/a;)Z
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lcom/twitter/util/h;->a()V

    .line 43
    iget-object v0, p0, Lcom/twitter/app/common/util/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 125
    invoke-static {}, Lcom/twitter/util/h;->a()V

    .line 126
    iget-object v2, p0, Lcom/twitter/app/common/util/b;->a:Ljava/util/List;

    .line 127
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 128
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/util/a;

    invoke-interface {v0, p1}, Lcom/twitter/app/common/util/a;->onActivityPaused(Landroid/app/Activity;)V

    .line 127
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 130
    :cond_0
    return-void
.end method

.method public d(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 134
    invoke-static {}, Lcom/twitter/util/h;->a()V

    .line 135
    iget-object v2, p0, Lcom/twitter/app/common/util/b;->a:Ljava/util/List;

    .line 136
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 137
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/util/a;

    invoke-interface {v0, p1}, Lcom/twitter/app/common/util/a;->onActivityStopped(Landroid/app/Activity;)V

    .line 136
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 139
    :cond_0
    return-void
.end method

.method public e(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 152
    invoke-static {}, Lcom/twitter/util/h;->a()V

    .line 153
    iget-object v2, p0, Lcom/twitter/app/common/util/b;->a:Ljava/util/List;

    .line 154
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 155
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/util/a;

    invoke-interface {v0, p1}, Lcom/twitter/app/common/util/a;->onActivityDestroyed(Landroid/app/Activity;)V

    .line 154
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 157
    :cond_0
    return-void
.end method
