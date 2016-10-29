.class Lcom/twitter/app/users/p;
.super Lcom/twitter/app/common/base/y;
.source "Twttr"


# instance fields
.field public final e:Z

.field public final f:I


# direct methods
.method constructor <init>(Lcom/twitter/app/common/base/TwitterFragmentActivity;Lcom/twitter/app/common/base/y;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 190
    invoke-direct {p0, p2}, Lcom/twitter/app/common/base/y;-><init>(Lcom/twitter/app/common/base/y;)V

    .line 191
    invoke-virtual {p0, v1}, Lcom/twitter/app/users/p;->a(Z)V

    .line 192
    invoke-virtual {p1}, Lcom/twitter/app/common/base/TwitterFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 193
    invoke-static {v2}, Lcom/twitter/app/users/q;->a(Landroid/content/Intent;)Lcom/twitter/app/users/q;

    move-result-object v2

    .line 194
    invoke-virtual {v2}, Lcom/twitter/app/users/q;->b()I

    move-result v3

    iput v3, p0, Lcom/twitter/app/users/p;->f:I

    .line 195
    iget v3, p0, Lcom/twitter/app/users/p;->f:I

    sparse-switch v3, :sswitch_data_0

    .line 243
    invoke-virtual {p0, v1}, Lcom/twitter/app/users/p;->c(Z)V

    .line 244
    invoke-virtual {v2}, Lcom/twitter/app/users/q;->e()[J

    move-result-object v2

    if-nez v2, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/twitter/app/users/p;->e:Z

    .line 248
    :goto_1
    return-void

    .line 197
    :sswitch_0
    invoke-virtual {p0, v1}, Lcom/twitter/app/users/p;->c(Z)V

    .line 198
    iput-boolean v1, p0, Lcom/twitter/app/users/p;->e:Z

    goto :goto_1

    .line 207
    :sswitch_1
    invoke-static {}, Lcom/twitter/android/ip;->a()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_2
    invoke-virtual {p0, v0}, Lcom/twitter/app/users/p;->c(Z)V

    .line 208
    iput-boolean v1, p0, Lcom/twitter/app/users/p;->e:Z

    .line 209
    invoke-virtual {p0, v1}, Lcom/twitter/app/users/p;->a(I)V

    goto :goto_1

    :cond_0
    move v0, v1

    .line 207
    goto :goto_2

    .line 214
    :sswitch_2
    invoke-virtual {p0, v1}, Lcom/twitter/app/users/p;->a(Z)V

    .line 215
    invoke-virtual {p0, v1}, Lcom/twitter/app/users/p;->b(Z)V

    .line 216
    invoke-virtual {p0, v0}, Lcom/twitter/app/users/p;->c(Z)V

    .line 217
    iput-boolean v0, p0, Lcom/twitter/app/users/p;->e:Z

    .line 218
    invoke-virtual {p0, v1}, Lcom/twitter/app/users/p;->a(I)V

    goto :goto_1

    .line 222
    :sswitch_3
    invoke-virtual {p0, v1}, Lcom/twitter/app/users/p;->a(Z)V

    .line 223
    iput-boolean v0, p0, Lcom/twitter/app/users/p;->e:Z

    goto :goto_1

    .line 227
    :sswitch_4
    iput-boolean v0, p0, Lcom/twitter/app/users/p;->e:Z

    goto :goto_1

    .line 231
    :sswitch_5
    invoke-virtual {p0, v1}, Lcom/twitter/app/users/p;->a(I)V

    .line 232
    invoke-virtual {p0, v0}, Lcom/twitter/app/users/p;->d(Z)V

    .line 233
    iput-boolean v1, p0, Lcom/twitter/app/users/p;->e:Z

    goto :goto_1

    .line 237
    :sswitch_6
    invoke-virtual {p0, v0}, Lcom/twitter/app/users/p;->c(Z)V

    .line 238
    invoke-virtual {p0, v1}, Lcom/twitter/app/users/p;->a(I)V

    .line 239
    iput-boolean v1, p0, Lcom/twitter/app/users/p;->e:Z

    goto :goto_1

    :cond_1
    move v0, v1

    .line 244
    goto :goto_0

    .line 195
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x6 -> :sswitch_0
        0x7 -> :sswitch_1
        0x8 -> :sswitch_1
        0xa -> :sswitch_1
        0xd -> :sswitch_1
        0x12 -> :sswitch_4
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x15 -> :sswitch_3
        0x1a -> :sswitch_2
        0x29 -> :sswitch_5
        0x2a -> :sswitch_6
    .end sparse-switch
.end method
