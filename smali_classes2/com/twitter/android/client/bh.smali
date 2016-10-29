.class public Lcom/twitter/android/client/bh;
.super Landroid/support/v4/widget/CursorAdapter;
.source "Twttr"


# static fields
.field private static final a:Landroid/util/SparseIntArray;


# instance fields
.field private final b:Landroid/view/View$OnClickListener;

.field private final c:Lcom/twitter/android/kn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/android/kn",
            "<",
            "Landroid/view/View;",
            "Lcom/twitter/library/scribe/TwitterScribeItem;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Z

.field private final e:Z

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    sput-object v0, Lcom/twitter/android/client/bh;->a:Landroid/util/SparseIntArray;

    .line 60
    sget-object v0, Lcom/twitter/android/client/bh;->a:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    const v2, 0x7f0a0202

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 61
    sget-object v0, Lcom/twitter/android/client/bh;->a:Landroid/util/SparseIntArray;

    const/4 v1, 0x3

    const v2, 0x7f0a0204

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 62
    sget-object v0, Lcom/twitter/android/client/bh;->a:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    const v2, 0x7f0a0205

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 63
    sget-object v0, Lcom/twitter/android/client/bh;->a:Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    const v2, 0x7f0a0203

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 64
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Lcom/twitter/android/kn;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View$OnClickListener;",
            "Lcom/twitter/android/kn",
            "<",
            "Landroid/view/View;",
            "Lcom/twitter/library/scribe/TwitterScribeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 69
    iput-object p2, p0, Lcom/twitter/android/client/bh;->b:Landroid/view/View$OnClickListener;

    .line 70
    iput-object p3, p0, Lcom/twitter/android/client/bh;->c:Lcom/twitter/android/kn;

    .line 72
    const-string/jumbo v0, "search_features_reverse_bolding_enabled"

    .line 73
    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/client/bh;->e:Z

    .line 74
    const-string/jumbo v0, "search_features_tap_ahead_enabled"

    invoke-static {v0}, Lcom/twitter/config/d;->a(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/client/bh;->d:Z

    .line 75
    return-void
.end method

.method private static a(I)I
    .locals 1

    .prologue
    .line 327
    packed-switch p0, :pswitch_data_0

    .line 350
    :pswitch_0
    const v0, 0x7f0205c8

    .line 354
    :goto_0
    return v0

    .line 329
    :pswitch_1
    const v0, 0x7f0205cb

    .line 330
    goto :goto_0

    .line 333
    :pswitch_2
    const v0, 0x7f0205ce

    .line 334
    goto :goto_0

    .line 337
    :pswitch_3
    const v0, 0x7f0205d4

    .line 338
    goto :goto_0

    .line 341
    :pswitch_4
    const v0, 0x7f0205d7

    .line 342
    goto :goto_0

    .line 346
    :pswitch_5
    const v0, 0x7f0205d1

    .line 347
    goto :goto_0

    .line 327
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private a(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 308
    iget-boolean v0, p0, Lcom/twitter/android/client/bh;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/client/bh;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 310
    invoke-static {p2}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 311
    iget-object v2, p0, Lcom/twitter/android/client/bh;->f:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 312
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/twitter/android/client/bh;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 313
    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    add-int v4, v3, v2

    if-ge v4, v0, :cond_0

    .line 315
    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    add-int/2addr v2, v3

    const/16 v3, 0x21

    invoke-virtual {v1, v4, v2, v0, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 319
    :cond_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    :goto_0
    return-void

    .line 321
    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private a(Lcom/twitter/android/client/bi;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/client/bh;->a(Lcom/twitter/android/client/bi;Ljava/lang/String;I)V

    .line 295
    return-void
.end method

.method private a(Lcom/twitter/android/client/bi;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/twitter/android/client/bh;->d:Z

    if-eqz v0, :cond_1

    if-nez p3, :cond_1

    .line 299
    iget-object v0, p1, Lcom/twitter/android/client/bi;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 300
    iget-object v0, p1, Lcom/twitter/android/client/bi;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/twitter/android/client/bh;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    iget-object v0, p1, Lcom/twitter/android/client/bi;->c:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    iget-boolean v0, p0, Lcom/twitter/android/client/bh;->d:Z

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p1, Lcom/twitter/android/client/bi;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 358
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/twitter/android/client/bh;->f:Ljava/lang/String;

    .line 359
    return-void

    .line 358
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 12

    .prologue
    const/4 v9, 0x3

    const/16 v11, 0xc

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 146
    invoke-interface {p3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 147
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    add-int/lit8 v7, v0, 0x1

    .line 149
    packed-switch v1, :pswitch_data_0

    .line 267
    :pswitch_0
    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 269
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/client/bi;

    .line 271
    if-eq v1, v6, :cond_8

    .line 272
    iget-object v1, v0, Lcom/twitter/android/client/bi;->a:Landroid/widget/TextView;

    invoke-direct {p0, v1, v2}, Lcom/twitter/android/client/bh;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 273
    iget-boolean v1, p0, Lcom/twitter/android/client/bh;->d:Z

    if-eqz v1, :cond_0

    .line 274
    invoke-direct {p0, v0, v2}, Lcom/twitter/android/client/bh;->a(Lcom/twitter/android/client/bi;Ljava/lang/String;)V

    .line 281
    :cond_0
    :goto_0
    invoke-static {v2, v11, v7}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(Ljava/lang/String;II)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v0

    .line 286
    :goto_1
    iget-object v1, p0, Lcom/twitter/android/client/bh;->c:Lcom/twitter/android/kn;

    if-eqz v1, :cond_1

    .line 287
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v6}, Landroid/os/Bundle;-><init>(I)V

    .line 288
    const-string/jumbo v2, "position"

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 289
    iget-object v2, p0, Lcom/twitter/android/client/bh;->c:Lcom/twitter/android/kn;

    invoke-interface {v2, p1, v0, v1}, Lcom/twitter/android/kn;->a(Landroid/view/View;Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 291
    :cond_1
    return-void

    :pswitch_1
    move-object v0, p1

    .line 152
    check-cast v0, Lcom/twitter/library/widget/UserSocialView;

    .line 153
    invoke-virtual {v0}, Lcom/twitter/library/widget/UserSocialView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/xy;

    .line 154
    const/16 v2, 0xb

    .line 155
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 157
    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/widget/UserSocialView;->setUserId(J)V

    .line 158
    iput-wide v2, v1, Lcom/twitter/android/xy;->e:J

    .line 160
    invoke-interface {p3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 162
    invoke-virtual {v0, v2}, Lcom/twitter/library/widget/UserSocialView;->setUserImageUrl(Ljava/lang/String;)V

    .line 165
    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 166
    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v8}, Lcom/twitter/library/widget/UserSocialView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const/16 v2, 0xd

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    move v2, v6

    :goto_2
    invoke-virtual {v0, v2}, Lcom/twitter/library/widget/UserSocialView;->setVerified(Z)V

    .line 171
    const/16 v2, 0xf

    .line 172
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 173
    iput v2, v1, Lcom/twitter/android/xy;->f:I

    .line 175
    const/16 v1, 0xe

    .line 176
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 177
    invoke-static {v3}, Lbyi;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 178
    const/16 v1, 0x2d

    const v2, 0x7f020590

    .line 180
    invoke-static {}, Lcom/twitter/util/ak;->g()Z

    move-result v5

    .line 178
    invoke-virtual/range {v0 .. v5}, Lcom/twitter/library/widget/UserSocialView;->a(IILjava/lang/String;IZ)V

    .line 191
    :goto_3
    invoke-static {v8, v9, v7}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(Ljava/lang/String;II)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v0

    goto :goto_1

    :cond_2
    move v2, v4

    .line 168
    goto :goto_2

    .line 181
    :cond_3
    invoke-static {v2}, Lcom/twitter/model/core/p;->c(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 182
    invoke-static {v2}, Lcom/twitter/model/core/p;->a(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 183
    :cond_4
    const v1, 0x7f02025d

    .line 184
    invoke-static {}, Lcom/twitter/util/ak;->g()Z

    move-result v3

    .line 183
    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/library/widget/UserSocialView;->a(IIZ)V

    goto :goto_3

    .line 186
    :cond_5
    const/16 v1, 0x28

    const v2, 0x7f02025d

    const/16 v3, 0x10

    .line 187
    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 189
    invoke-static {}, Lcom/twitter/util/ak;->g()Z

    move-result v5

    .line 186
    invoke-virtual/range {v0 .. v5}, Lcom/twitter/library/widget/UserSocialView;->a(IILjava/lang/String;IZ)V

    goto :goto_3

    .line 196
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/client/bk;

    .line 198
    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 199
    iget-object v2, v0, Lcom/twitter/android/client/bk;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v0, v0, Lcom/twitter/android/client/bk;->b:Landroid/widget/TextView;

    const/4 v2, 0x5

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    const/16 v0, 0x8

    invoke-static {v1, v0, v7}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(Ljava/lang/String;II)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v0

    goto/16 :goto_1

    .line 208
    :pswitch_3
    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 209
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/client/bi;

    .line 210
    iget-object v2, v0, Lcom/twitter/android/client/bi;->a:Landroid/widget/TextView;

    invoke-direct {p0, v2, v1}, Lcom/twitter/android/client/bh;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 211
    invoke-direct {p0, v0, v1}, Lcom/twitter/android/client/bh;->a(Lcom/twitter/android/client/bi;Ljava/lang/String;)V

    .line 213
    const/16 v0, 0xd

    .line 214
    invoke-static {v1, v0, v7}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(Ljava/lang/String;II)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v0

    goto/16 :goto_1

    .line 220
    :pswitch_4
    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 221
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/client/bj;

    .line 223
    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 225
    iget-object v3, v0, Lcom/twitter/android/client/bj;->b:Landroid/widget/TextView;

    invoke-direct {p0, v3, v1}, Lcom/twitter/android/client/bh;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 226
    iget-object v3, v0, Lcom/twitter/android/client/bj;->a:Landroid/view/View;

    iget-object v4, p0, Lcom/twitter/android/client/bh;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v0, v0, Lcom/twitter/android/client/bj;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 229
    invoke-static {v1, v11, v7}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(Ljava/lang/String;II)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v0

    goto/16 :goto_1

    .line 235
    :pswitch_5
    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 236
    const/16 v0, 0x8

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 238
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/client/bi;

    .line 242
    sget-object v3, Lcom/twitter/android/client/bh;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 243
    invoke-static {v2}, Lcom/twitter/android/client/bh;->a(I)I

    move-result v5

    .line 244
    if-lez v3, :cond_7

    .line 245
    new-array v8, v6, [Ljava/lang/Object;

    aput-object v1, v8, v4

    .line 246
    invoke-virtual {p2, v3, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 247
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 249
    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 250
    if-lez v8, :cond_6

    .line 251
    new-instance v9, Landroid/text/style/StyleSpan;

    invoke-direct {v9, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 252
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v10, 0x21

    .line 251
    invoke-virtual {v4, v9, v8, v3, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 255
    :cond_6
    iget-object v3, v0, Lcom/twitter/android/client/bi;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    :goto_4
    iget-object v3, v0, Lcom/twitter/android/client/bi;->b:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 260
    invoke-direct {p0, v0, v1, v2}, Lcom/twitter/android/client/bh;->a(Lcom/twitter/android/client/bi;Ljava/lang/String;I)V

    .line 262
    invoke-static {v1, v11, v7}, Lcom/twitter/library/scribe/TwitterScribeItem;->a(Ljava/lang/String;II)Lcom/twitter/library/scribe/TwitterScribeItem;

    move-result-object v0

    goto/16 :goto_1

    .line 257
    :cond_7
    iget-object v3, v0, Lcom/twitter/android/client/bi;->a:Landroid/widget/TextView;

    invoke-direct {p0, v3, v1}, Lcom/twitter/android/client/bh;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_4

    .line 277
    :cond_8
    iget-object v1, v0, Lcom/twitter/android/client/bi;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v0, v0, Lcom/twitter/android/client/bi;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getItemViewType(I)I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 84
    invoke-virtual {p0, p1}, Lcom/twitter/android/client/bh;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 85
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 86
    packed-switch v0, :pswitch_data_0

    .line 101
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    move v0, v1

    .line 89
    goto :goto_0

    .line 92
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 95
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 98
    :pswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x6

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 108
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 109
    packed-switch v0, :pswitch_data_0

    .line 135
    :pswitch_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04039e

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 137
    new-instance v1, Lcom/twitter/android/client/bi;

    invoke-direct {v1, v0}, Lcom/twitter/android/client/bi;-><init>(Landroid/view/View;)V

    .line 138
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 139
    :goto_0
    return-object v0

    .line 112
    :pswitch_1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0403da

    .line 113
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/widget/UserSocialView;

    .line 114
    new-instance v1, Lcom/twitter/android/xy;

    invoke-direct {v1, v0}, Lcom/twitter/android/xy;-><init>(Lcom/twitter/library/widget/BaseUserView;)V

    invoke-virtual {v0, v1}, Lcom/twitter/library/widget/UserSocialView;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 118
    :pswitch_2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040364

    .line 119
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 120
    new-instance v1, Lcom/twitter/android/client/bk;

    invoke-direct {v1, v0}, Lcom/twitter/android/client/bk;-><init>(Landroid/view/View;)V

    .line 121
    const v2, 0x7f130059

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 122
    iget-object v2, v1, Lcom/twitter/android/client/bk;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 127
    :pswitch_3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040304

    .line 128
    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 129
    new-instance v1, Lcom/twitter/android/client/bj;

    invoke-direct {v1, v0}, Lcom/twitter/android/client/bj;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
