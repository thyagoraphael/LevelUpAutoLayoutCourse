//
//  Challenge.swift
//  ChallengeSpotifyPlayer
//
//  Created by thyagoraphael on 7/25/21.
//

import UIKit

class Challenge: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
    }
    
    func setupViews() {
        let albumImage = makeImageView(named: "rush")
        view.addSubview(albumImage)
        NSLayoutConstraint.activate([
            albumImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            albumImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            albumImage.heightAnchor.constraint(equalTo: albumImage.widthAnchor, multiplier: 1),
            albumImage.widthAnchor.constraint(equalToConstant: view.bounds.width)
        ])
        
        let trackLabel = makeTrackLabel(withText: "Tom Sawyer")
        let albumLabel = makeAlbumLabel(withText: "Rush • Moving Pictures (2011 Remaster)")
        view.addSubview(trackLabel)
        view.addSubview(albumLabel)
        NSLayoutConstraint.activate([
            trackLabel.topAnchor.constraint(equalTo: albumImage.bottomAnchor, constant: 8),
            trackLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            trackLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            
            albumLabel.topAnchor.constraint(equalTo: trackLabel.bottomAnchor, constant: 8),
            albumLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            albumLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8)
        ])
        
        let playButton = makePlayButton()
        let previewStartLabel = makePreviewLabel(withText: "0:00")
        let previewEndLabel = makePreviewLabel(withText: "0:30")
        let progressView = makeProgressView()
        view.addSubview(playButton)
        view.addSubview(previewStartLabel)
        view.addSubview(progressView)
        view.addSubview(previewEndLabel)
        NSLayoutConstraint.activate([
            playButton.topAnchor.constraint(equalTo: albumLabel.bottomAnchor, constant: 8),
            playButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            playButton.heightAnchor.constraint(equalToConstant: buttonHeight),
            playButton.widthAnchor.constraint(equalToConstant: buttonHeight),
            
            previewStartLabel.centerYAnchor.constraint(equalTo: playButton.centerYAnchor),
            previewStartLabel.leadingAnchor.constraint(equalTo: playButton.trailingAnchor, constant: 8),
            
            progressView.centerYAnchor.constraint(equalTo: playButton.centerYAnchor),
            progressView.leadingAnchor.constraint(equalTo: previewStartLabel.trailingAnchor, constant: 8),
            
            previewEndLabel.centerYAnchor.constraint(equalTo: playButton.centerYAnchor),
            previewEndLabel.leadingAnchor.constraint(equalTo: progressView.trailingAnchor, constant: 8),
            previewEndLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8)
        ])
        
        let spotifyButton = makeSpotifyButton(withText: "PLAY ON SPOTIFY")
        view.addSubview(spotifyButton)
        NSLayoutConstraint.activate([
            spotifyButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            spotifyButton.topAnchor.constraint(equalTo: progressView.bottomAnchor, constant: 32),
            spotifyButton.heightAnchor.constraint(equalToConstant: buttonHeight)
        ])
    }
}
