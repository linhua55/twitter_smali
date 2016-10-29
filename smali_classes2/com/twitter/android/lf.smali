.class public Lcom/twitter/android/lf;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/android/lg;

.field private final b:Lcom/twitter/android/util/al;

.field private c:Z


# direct methods
.method constructor <init>(Lcom/twitter/android/lg;Lcom/twitter/android/util/al;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/twitter/android/lf;->a:Lcom/twitter/android/lg;

    .line 34
    iput-object p2, p0, Lcom/twitter/android/lf;->b:Lcom/twitter/android/util/al;

    .line 35
    return-void
.end method

.method private a(Z)I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/twitter/android/lf;->b:Lcom/twitter/android/util/al;

    invoke-interface {v0}, Lcom/twitter/android/util/al;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    if-eqz p1, :cond_0

    const v0, 0x7f0a061a

    .line 120
    :goto_0
    return v0

    .line 117
    :cond_0
    const v0, 0x7f0a0619

    goto :goto_0

    .line 120
    :cond_1
    if-eqz p1, :cond_2

    const v0, 0x7f0a061b

    goto :goto_0

    :cond_2
    const v0, 0x7f0a0618

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/twitter/app/common/base/f;)V
    .locals 11

    .prologue
    .line 38
    if-eqz p1, :cond_3

    const-string/jumbo v0, "is_phone_signup"

    const/4 v1, 0x0

    .line 39
    invoke-virtual {p1, v0, v1}, Lcom/twitter/app/common/base/f;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    move v7, v0

    .line 40
    :goto_0
    if-eqz p1, :cond_4

    const-string/jumbo v0, "is_from_umf"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/twitter/app/common/base/f;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    move v6, v0

    .line 41
    :goto_1
    if-eqz p1, :cond_5

    const-string/jumbo v0, "is_phone100_add_phone"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/twitter/app/common/base/f;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    move v5, v0

    .line 42
    :goto_2
    if-eqz p1, :cond_6

    const-string/jumbo v0, "nux_seamful_design_enabled"

    const/4 v1, 0x0

    .line 43
    invoke-virtual {p1, v0, v1}, Lcom/twitter/app/common/base/f;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    move v4, v0

    .line 44
    :goto_3
    if-eqz p1, :cond_7

    const-string/jumbo v0, "is_settings_add_phone"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/twitter/app/common/base/f;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    move v3, v0

    .line 45
    :goto_4
    if-eqz p1, :cond_8

    const-string/jumbo v0, "is_settings_change_phone"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/twitter/app/common/base/f;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    move v2, v0

    .line 46
    :goto_5
    if-eqz p1, :cond_9

    const-string/jumbo v0, "should_prefill_phone"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/twitter/app/common/base/f;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    move v1, v0

    .line 47
    :goto_6
    if-eqz p1, :cond_a

    const-string/jumbo v0, "custom_header"

    invoke-virtual {p1, v0}, Lcom/twitter/app/common/base/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    :goto_7
    const-string/jumbo v8, "people_discoverability_settings_update_enabled"

    invoke-static {v8}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v8

    .line 51
    invoke-direct {p0, v8}, Lcom/twitter/android/lf;->a(Z)I

    move-result v9

    .line 52
    iput-boolean v7, p0, Lcom/twitter/android/lf;->c:Z

    .line 54
    if-eqz v7, :cond_b

    .line 55
    iget-object v0, p0, Lcom/twitter/android/lf;->a:Lcom/twitter/android/lg;

    const v3, 0x7f0a0836

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Lcom/twitter/android/lg;->a(IZ)V

    .line 56
    iget-object v0, p0, Lcom/twitter/android/lf;->a:Lcom/twitter/android/lg;

    const/4 v3, 0x1

    const v4, 0x7f0a0616

    const v5, 0x7f0a0615

    invoke-interface {v0, v3, v4, v5}, Lcom/twitter/android/lg;->a(ZII)V

    .line 57
    iget-object v0, p0, Lcom/twitter/android/lf;->a:Lcom/twitter/android/lg;

    invoke-interface {v0}, Lcom/twitter/android/lg;->f()V

    .line 58
    iget-object v0, p0, Lcom/twitter/android/lf;->a:Lcom/twitter/android/lg;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Lcom/twitter/android/lg;->a(Z)V

    .line 59
    iget-object v0, p0, Lcom/twitter/android/lf;->a:Lcom/twitter/android/lg;

    invoke-interface {v0}, Lcom/twitter/android/lg;->c()V

    .line 90
    :goto_8
    const/4 v0, 0x0

    .line 91
    if-eqz p1, :cond_0

    const-string/jumbo v3, "extra_flow_data"

    invoke-virtual {p1, v3}, Lcom/twitter/app/common/base/f;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    const-string/jumbo v0, "extra_flow_data"

    invoke-virtual {p1, v0}, Lcom/twitter/app/common/base/f;->h(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/FlowData;

    .line 93
    invoke-virtual {v0}, Lcom/twitter/android/FlowData;->b()Ljava/lang/String;

    move-result-object v0

    .line 96
    :cond_0
    if-nez v2, :cond_1

    if-nez v1, :cond_1

    .line 97
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 98
    iget-object v1, p0, Lcom/twitter/android/lf;->a:Lcom/twitter/android/lg;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/twitter/android/lg;->a(Ljava/lang/String;Z)V

    .line 104
    :cond_1
    :goto_9
    invoke-static {}, Lcom/twitter/util/collection/au;->e()Lcom/twitter/util/collection/au;

    move-result-object v0

    .line 106
    if-eqz v7, :cond_15

    .line 107
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const v3, 0x7f0a07f0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x7f0a0935

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/util/collection/au;->a([Ljava/lang/Object;)Lcom/twitter/util/collection/au;

    .line 112
    :cond_2
    :goto_a
    iget-object v1, p0, Lcom/twitter/android/lf;->a:Lcom/twitter/android/lg;

    invoke-virtual {v0}, Lcom/twitter/util/collection/au;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v1, v0}, Lcom/twitter/android/lg;->a(Ljava/util/Collection;)V

    .line 113
    return-void

    .line 39
    :cond_3
    const/4 v0, 0x0

    move v7, v0

    goto/16 :goto_0

    .line 40
    :cond_4
    const/4 v0, 0x0

    move v6, v0

    goto/16 :goto_1

    .line 41
    :cond_5
    const/4 v0, 0x0

    move v5, v0

    goto/16 :goto_2

    .line 43
    :cond_6
    const/4 v0, 0x0

    move v4, v0

    goto/16 :goto_3

    .line 44
    :cond_7
    const/4 v0, 0x0

    move v3, v0

    goto/16 :goto_4

    .line 45
    :cond_8
    const/4 v0, 0x0

    move v2, v0

    goto/16 :goto_5

    .line 46
    :cond_9
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_6

    .line 47
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_7

    .line 60
    :cond_b
    if-eqz v6, :cond_c

    .line 61
    iget-object v0, p0, Lcom/twitter/android/lf;->a:Lcom/twitter/android/lg;

    const/4 v3, 0x0

    invoke-interface {v0, v9, v3}, Lcom/twitter/android/lg;->a(IZ)V

    .line 62
    iget-object v0, p0, Lcom/twitter/android/lf;->a:Lcom/twitter/android/lg;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v0, v3, v4, v5}, Lcom/twitter/android/lg;->a(ZII)V

    .line 63
    iget-object v0, p0, Lcom/twitter/android/lf;->a:Lcom/twitter/android/lg;

    const v3, 0x7f0a060f

    invoke-interface {v0, v3}, Lcom/twitter/android/lg;->a(I)V

    .line 64
    iget-object v0, p0, Lcom/twitter/android/lf;->a:Lcom/twitter/android/lg;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lcom/twitter/android/lg;->a(Z)V

    goto/16 :goto_8

    .line 65
    :cond_c
    if-eqz v5, :cond_d

    .line 66
    iget-object v0, p0, Lcom/twitter/android/lf;->a:Lcom/twitter/android/lg;

    const/4 v3, 0x1

    const v4, 0x7f0a004f

    const v5, 0x7f0a0615

    invoke-interface {v0, v3, v4, v5}, Lcom/twitter/android/lg;->a(ZII)V

    .line 67
    iget-object v0, p0, Lcom/twitter/android/lf;->a:Lcom/twitter/android/lg;

    invoke-interface {v0}, Lcom/twitter/android/lg;->f()V

    .line 68
    iget-object v0, p0, Lcom/twitter/android/lf;->a:Lcom/twitter/android/lg;

    const/4 v3, 0x0

    invoke-interface {v0, v9, v3}, Lcom/twitter/android/lg;->a(IZ)V

    .line 69
    iget-object v0, p0, Lcom/twitter/android/lf;->a:Lcom/twitter/android/lg;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Lcom/twitter/android/lg;->a(Z)V

    .line 70
    iget-object v0, p0, Lcom/twitter/android/lf;->a:Lcom/twitter/android/lg;

    invoke-interface {v0}, Lcom/twitter/android/lg;->c()V

    goto/16 :goto_8

    .line 71
    :cond_d
    if-eqz v4, :cond_f

    .line 72
    iget-object v3, p0, Lcom/twitter/android/lf;->a:Lcom/twitter/android/lg;

    const/4 v4, 0x1

    const v5, 0x7f0a004f

    iget-object v0, p0, Lcom/twitter/android/lf;->b:Lcom/twitter/android/util/al;

    .line 73
    invoke-interface {v0}, Lcom/twitter/android/util/al;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    const v0, 0x7f0a0612

    .line 72
    :goto_b
    invoke-interface {v3, v4, v5, v0}, Lcom/twitter/android/lg;->a(ZII)V

    .line 74
    iget-object v0, p0, Lcom/twitter/android/lf;->a:Lcom/twitter/android/lg;

    invoke-interface {v0}, Lcom/twitter/android/lg;->c()V

    goto/16 :goto_8

    .line 73
    :cond_e
    const v0, 0x7f0a0611

    goto :goto_b

    .line 76
    :cond_f
    iget-object v4, p0, Lcom/twitter/android/lf;->a:Lcom/twitter/android/lg;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/twitter/android/lg;->a(Z)V

    .line 77
    iget-object v4, p0, Lcom/twitter/android/lf;->a:Lcom/twitter/android/lg;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    invoke-interface {v4, v5, v6, v10}, Lcom/twitter/android/lg;->a(ZII)V

    .line 78
    if-nez v3, :cond_10

    if-eqz v2, :cond_11

    .line 79
    :cond_10
    iget-object v3, p0, Lcom/twitter/android/lf;->a:Lcom/twitter/android/lg;

    const/4 v4, 0x0

    invoke-interface {v3, v9, v4}, Lcom/twitter/android/lg;->a(IZ)V

    .line 80
    iget-object v3, p0, Lcom/twitter/android/lf;->a:Lcom/twitter/android/lg;

    invoke-interface {v3}, Lcom/twitter/android/lg;->f()V

    .line 82
    :cond_11
    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 83
    iget-object v3, p0, Lcom/twitter/android/lf;->a:Lcom/twitter/android/lg;

    invoke-interface {v3, v0}, Lcom/twitter/android/lg;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 85
    :cond_12
    iget-object v3, p0, Lcom/twitter/android/lf;->a:Lcom/twitter/android/lg;

    iget-object v0, p0, Lcom/twitter/android/lf;->b:Lcom/twitter/android/util/al;

    invoke-interface {v0}, Lcom/twitter/android/util/al;->a()Z

    move-result v0

    if-eqz v0, :cond_13

    const v0, 0x7f0a0612

    :goto_c
    invoke-interface {v3, v0}, Lcom/twitter/android/lg;->a(I)V

    goto/16 :goto_8

    :cond_13
    const v0, 0x7f0a0611

    goto :goto_c

    .line 100
    :cond_14
    iget-object v0, p0, Lcom/twitter/android/lf;->a:Lcom/twitter/android/lg;

    iget-object v1, p0, Lcom/twitter/android/lf;->b:Lcom/twitter/android/util/al;

    invoke-interface {v1}, Lcom/twitter/android/util/al;->h()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/twitter/android/lg;->a(Ljava/lang/String;Z)V

    goto/16 :goto_9

    .line 108
    :cond_15
    if-eqz v8, :cond_2

    .line 109
    const v1, 0x7f0a07f0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/util/collection/au;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/au;

    goto/16 :goto_a
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/twitter/android/lf;->c:Z

    return v0
.end method
