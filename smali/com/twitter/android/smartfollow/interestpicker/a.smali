.class public Lcom/twitter/android/smartfollow/interestpicker/a;
.super Lcom/twitter/android/smartfollow/b;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/interestpicker/w;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/android/smartfollow/b",
        "<",
        "Landroid/os/Parcelable;",
        "Lcom/twitter/android/smartfollow/interestpicker/InterestPickerScreen;",
        ">;",
        "Lcom/twitter/android/interestpicker/w;"
    }
.end annotation


# instance fields
.field private final i:Lcom/twitter/android/interestpicker/x;

.field private final j:Z

.field private k:Lcom/twitter/refresh/widget/a;


# direct methods
.method public constructor <init>(Lcom/twitter/android/interestpicker/x;I)V
    .locals 5

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/twitter/android/smartfollow/b;-><init>()V

    .line 55
    new-instance v0, Lcom/twitter/refresh/widget/a;

    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twitter/refresh/widget/a;-><init>(IJI)V

    iput-object v0, p0, Lcom/twitter/android/smartfollow/interestpicker/a;->k:Lcom/twitter/refresh/widget/a;

    .line 60
    invoke-static {p2}, Lzl;->a(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/smartfollow/interestpicker/a;->j:Z

    .line 61
    iput-object p1, p0, Lcom/twitter/android/smartfollow/interestpicker/a;->i:Lcom/twitter/android/interestpicker/x;

    .line 62
    iget-object v0, p0, Lcom/twitter/android/smartfollow/interestpicker/a;->i:Lcom/twitter/android/interestpicker/x;

    iget-boolean v1, p0, Lcom/twitter/android/smartfollow/interestpicker/a;->j:Z

    invoke-virtual {v0, v1}, Lcom/twitter/android/interestpicker/x;->b(Z)V

    .line 63
    iget-object v0, p0, Lcom/twitter/android/smartfollow/interestpicker/a;->i:Lcom/twitter/android/interestpicker/x;

    invoke-virtual {v0}, Lcom/twitter/android/interestpicker/x;->e()V

    .line 64
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/twitter/android/smartfollow/interestpicker/a;->i:Lcom/twitter/android/interestpicker/x;

    invoke-virtual {v0}, Lcom/twitter/android/interestpicker/x;->c()V

    .line 107
    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    .line 187
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 188
    iget-object v1, p0, Lcom/twitter/android/smartfollow/interestpicker/a;->i:Lcom/twitter/android/interestpicker/x;

    .line 189
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "extra_search_terms"

    sget-object v3, Lcom/twitter/android/interestpicker/aw;->e:Lcom/twitter/android/interestpicker/az;

    .line 190
    invoke-static {v3}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v3

    .line 189
    invoke-static {v0, v2, v3}, Lcom/twitter/util/aa;->a(Landroid/os/Bundle;Ljava/lang/String;Lcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 188
    invoke-virtual {v1, v0}, Lcom/twitter/android/interestpicker/x;->b(Ljava/util/List;)V

    .line 192
    :cond_0
    return-void
.end method

.method public a(Lcmf;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcmf",
            "<",
            "Lcom/twitter/android/interestpicker/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 176
    invoke-virtual {p1}, Lcmf;->bb_()I

    move-result v0

    if-lez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/twitter/android/smartfollow/interestpicker/a;->i:Lcom/twitter/android/interestpicker/x;

    invoke-virtual {v0}, Lcom/twitter/android/interestpicker/x;->b()I

    move-result v0

    if-lez v0, :cond_1

    .line 178
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/interestpicker/a;->n()V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/interestpicker/a;->o()V

    goto :goto_0
.end method

.method public a(Lcom/twitter/app/common/di/InjectionScope;)V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/twitter/android/smartfollow/b;->a(Lcom/twitter/app/common/di/InjectionScope;)V

    .line 75
    sget-object v0, Lcom/twitter/app/common/di/InjectionScope;->c:Lcom/twitter/app/common/di/InjectionScope;

    if-ne p1, v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/twitter/android/smartfollow/interestpicker/a;->i:Lcom/twitter/android/interestpicker/x;

    invoke-virtual {v0}, Lcom/twitter/android/interestpicker/x;->f()V

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    sget-object v0, Lcom/twitter/app/common/di/InjectionScope;->e:Lcom/twitter/app/common/di/InjectionScope;

    if-ne p1, v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/twitter/android/smartfollow/interestpicker/a;->i:Lcom/twitter/android/interestpicker/x;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/interestpicker/x;->a(Lcom/twitter/android/interestpicker/w;)V

    goto :goto_0
.end method

.method public aO_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const-string/jumbo v0, "presenter_interest_picker"

    return-object v0
.end method

.method public b(J)V
    .locals 3

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/interestpicker/a;->c()Lcom/twitter/android/smartfollow/r;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/interestpicker/a;->i()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/twitter/android/smartfollow/r;->a(JLjava/lang/String;I)V

    .line 111
    return-void
.end method

.method protected p()V
    .locals 1

    .prologue
    .line 144
    invoke-super {p0}, Lcom/twitter/android/smartfollow/b;->p()V

    .line 145
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/interestpicker/a;->b()Lcom/twitter/android/smartfollow/BaseSmartFollowScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/interestpicker/a;->b()Lcom/twitter/android/smartfollow/BaseSmartFollowScreen;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/smartfollow/interestpicker/InterestPickerScreen;

    invoke-virtual {v0}, Lcom/twitter/android/smartfollow/interestpicker/InterestPickerScreen;->getFirstVisibleItem()Lcom/twitter/refresh/widget/a;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/smartfollow/interestpicker/a;->k:Lcom/twitter/refresh/widget/a;

    .line 148
    :cond_0
    return-void
.end method

.method protected q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    const-string/jumbo v0, "interest_picker_screen"

    return-object v0
.end method

.method protected r()V
    .locals 5

    .prologue
    .line 84
    invoke-super {p0}, Lcom/twitter/android/smartfollow/b;->r()V

    .line 85
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/interestpicker/a;->b()Lcom/twitter/android/smartfollow/BaseSmartFollowScreen;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/interestpicker/a;->b()Lcom/twitter/android/smartfollow/BaseSmartFollowScreen;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/smartfollow/interestpicker/InterestPickerScreen;

    iget-boolean v1, p0, Lcom/twitter/android/smartfollow/interestpicker/a;->j:Z

    invoke-virtual {v0, v1}, Lcom/twitter/android/smartfollow/interestpicker/InterestPickerScreen;->setInterestPickerV11Enabled(Z)V

    .line 88
    iget-object v0, p0, Lcom/twitter/android/smartfollow/interestpicker/a;->i:Lcom/twitter/android/interestpicker/x;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/interestpicker/x;->a(Z)V

    .line 89
    iget-object v0, p0, Lcom/twitter/android/smartfollow/interestpicker/a;->i:Lcom/twitter/android/interestpicker/x;

    invoke-virtual {v0, p0}, Lcom/twitter/android/interestpicker/x;->a(Lcom/twitter/android/interestpicker/w;)V

    .line 90
    iget-object v1, p0, Lcom/twitter/android/smartfollow/interestpicker/a;->i:Lcom/twitter/android/interestpicker/x;

    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/interestpicker/a;->b()Lcom/twitter/android/smartfollow/BaseSmartFollowScreen;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/interestpicker/ah;

    invoke-virtual {v1, v0}, Lcom/twitter/android/interestpicker/x;->a(Lcom/twitter/android/interestpicker/ah;)V

    .line 91
    iget-object v0, p0, Lcom/twitter/android/smartfollow/interestpicker/a;->i:Lcom/twitter/android/interestpicker/x;

    invoke-virtual {v0}, Lcom/twitter/android/interestpicker/x;->a()V

    .line 92
    iget-object v0, p0, Lcom/twitter/android/smartfollow/interestpicker/a;->i:Lcom/twitter/android/interestpicker/x;

    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/interestpicker/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/interestpicker/x;->c(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/interestpicker/a;->h()Landroid/content/Context;

    move-result-object v0

    .line 94
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    .line 95
    new-instance v2, Lsj;

    const-string/jumbo v3, "welcome_flow"

    invoke-direct {v2, v0, v1, v3}, Lsj;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/lang/String;)V

    .line 98
    iget-boolean v3, p0, Lcom/twitter/android/smartfollow/interestpicker/a;->j:Z

    if-nez v3, :cond_0

    .line 99
    iget-object v3, p0, Lcom/twitter/android/smartfollow/interestpicker/a;->i:Lcom/twitter/android/interestpicker/x;

    new-instance v4, Lcom/twitter/android/interestpicker/ap;

    invoke-direct {v4, v0, v1, v2}, Lcom/twitter/android/interestpicker/ap;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Lsj;)V

    invoke-virtual {v3, v4}, Lcom/twitter/android/interestpicker/x;->a(Lcom/twitter/android/interestpicker/ap;)V

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/interestpicker/a;->b()Lcom/twitter/android/smartfollow/BaseSmartFollowScreen;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/smartfollow/interestpicker/InterestPickerScreen;

    iget-object v1, p0, Lcom/twitter/android/smartfollow/interestpicker/a;->k:Lcom/twitter/refresh/widget/a;

    invoke-virtual {v0, v1}, Lcom/twitter/android/smartfollow/interestpicker/InterestPickerScreen;->a(Lcom/twitter/refresh/widget/a;)V

    .line 103
    return-void
.end method

.method public t()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 115
    iget-object v0, p0, Lcom/twitter/android/smartfollow/interestpicker/a;->i:Lcom/twitter/android/interestpicker/x;

    const-string/jumbo v1, "skip"

    invoke-virtual {v0, v1}, Lcom/twitter/android/interestpicker/x;->a(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/interestpicker/a;->f()Lcom/twitter/android/smartfollow/SmartFollowFlowData;

    move-result-object v0

    .line 117
    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/android/smartfollow/SmartFollowFlowData;->a([Ljava/lang/String;)V

    .line 118
    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/android/smartfollow/SmartFollowFlowData;->b([Ljava/lang/String;)V

    .line 119
    invoke-super {p0}, Lcom/twitter/android/smartfollow/b;->t()V

    .line 120
    return-void
.end method

.method public u()V
    .locals 3

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/interestpicker/a;->f()Lcom/twitter/android/smartfollow/SmartFollowFlowData;

    move-result-object v1

    .line 125
    iget-object v0, p0, Lcom/twitter/android/smartfollow/interestpicker/a;->i:Lcom/twitter/android/interestpicker/x;

    const/4 v2, 0x1

    .line 126
    invoke-virtual {v0, v2}, Lcom/twitter/android/interestpicker/x;->a(I)Ljava/util/List;

    move-result-object v0

    .line 127
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/twitter/android/smartfollow/SmartFollowFlowData;->a([Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/twitter/android/smartfollow/interestpicker/a;->i:Lcom/twitter/android/interestpicker/x;

    const/4 v2, 0x2

    .line 129
    invoke-virtual {v0, v2}, Lcom/twitter/android/interestpicker/x;->a(I)Ljava/util/List;

    move-result-object v0

    .line 130
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/twitter/android/smartfollow/SmartFollowFlowData;->b([Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/twitter/android/smartfollow/interestpicker/a;->i:Lcom/twitter/android/interestpicker/x;

    const-string/jumbo v1, "selected"

    invoke-virtual {v0, v1}, Lcom/twitter/android/interestpicker/x;->a(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/twitter/android/smartfollow/interestpicker/a;->i:Lcom/twitter/android/interestpicker/x;

    iget-object v1, p0, Lcom/twitter/android/smartfollow/interestpicker/a;->i:Lcom/twitter/android/interestpicker/x;

    const/4 v2, 0x0

    .line 133
    invoke-virtual {v1, v2}, Lcom/twitter/android/interestpicker/x;->a(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/interestpicker/x;->a(Ljava/util/List;)V

    .line 135
    const-string/jumbo v0, "interest_persistence_request_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/interestpicker/a;->v()V

    .line 139
    :cond_0
    invoke-super {p0}, Lcom/twitter/android/smartfollow/b;->u()V

    .line 140
    return-void
.end method

.method protected v()V
    .locals 6
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/interestpicker/a;->b()Lcom/twitter/android/smartfollow/BaseSmartFollowScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/interestpicker/a;->b()Lcom/twitter/android/smartfollow/BaseSmartFollowScreen;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/smartfollow/interestpicker/InterestPickerScreen;

    invoke-virtual {v0}, Lcom/twitter/android/smartfollow/interestpicker/InterestPickerScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 154
    invoke-static {v0}, Lcom/twitter/util/a;->c(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 155
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 156
    new-instance v3, Lcom/twitter/model/json/stratostore/JsonInterestSelections;

    invoke-direct {v3}, Lcom/twitter/model/json/stratostore/JsonInterestSelections;-><init>()V

    .line 157
    iget-object v4, p0, Lcom/twitter/android/smartfollow/interestpicker/a;->i:Lcom/twitter/android/interestpicker/x;

    .line 158
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/interestpicker/a;->f()Lcom/twitter/android/smartfollow/SmartFollowFlowData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/twitter/android/smartfollow/SmartFollowFlowData;->f()Lcom/twitter/model/stratostore/SourceLocation;

    move-result-object v5

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-virtual {v4, v5, v0, v1, v2}, Lcom/twitter/android/interestpicker/x;->a(Lcom/twitter/model/stratostore/SourceLocation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v3, Lcom/twitter/model/json/stratostore/JsonInterestSelections;->a:Ljava/util/List;

    .line 160
    invoke-virtual {p0}, Lcom/twitter/android/smartfollow/interestpicker/a;->c()Lcom/twitter/android/smartfollow/r;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/twitter/android/smartfollow/r;->a(Lcom/twitter/model/json/stratostore/JsonInterestSelections;)V

    .line 162
    :cond_0
    return-void
.end method

.method protected w()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/twitter/android/smartfollow/interestpicker/a;->i:Lcom/twitter/android/interestpicker/x;

    invoke-virtual {v0}, Lcom/twitter/android/interestpicker/x;->d()V

    .line 166
    return-void
.end method
